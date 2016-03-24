#Clear Host
Param($SrcPath, $DstPath)
Write-Output "Source     : $SrcPath"
Write-Output "Destination: $DstPath"

$all_start = Get-Date

function GetNow() {
    return Get-Date -format "yyyy-MM-dd HH:mm:ss"
}
$now = GetNow
$file_header = "File created at $now.`n"

$global:good_releases_file="_good_releases.txt"
$global:bad_releases_file="_bad_releases.txt"
$global:non_releases_file="_dirs_non_releases.txt"
$global:good_releasified_dirs_file="_good_releasified_dirs.txt"
$global:bad_releasified_dirs_file="_bad_releasified_dirs.txt"

Write-Output $file_header >$global:good_releases_file
Write-Output $file_header >$global:bad_releases_file
Write-Output $file_header >$global:non_releases_file
Write-Output $file_header >$global:good_releasified_dirs_file
Write-Output $file_header >$global:bad_releasified_dirs_file

function IsReleasePath([string] $a) {
    return $a -imatch '^[0-9a-z()_\.]+-[0-9a-z()_\.-]+[0-9()-]*-[0-9a-z_\.-]+$'
}

function IsNumber([string] $a) {
    return $a -imatch '^[0-9]+$'
}

function IsVA([string] $a) {
    return ($a -imatch '^VA[_-]') -or ($a -imatch '^Various[_-]')
}

function ContainsReleaseStuff([string] $a) {
    $ainfo = New-Object system.IO.DirectoryInfo $a
    $has_mp3 = $ainfo.GetFiles("*.mp3").Count -ge 1
    $n_cdx = $ainfo.GetDirectories("cd?").Count
    $has_cdx = $n_cdx -ge 1
    $only_cdx = $ainfo.GetDirectories().Count -eq $n_cdx
    return $has_mp3 -or ($has_cdx -and $only_cdx)
}

function FixPath([string] $a) {
    $a = $a -ireplace '[\[\]()]', ''
    $a = $a -creplace '[ÁÀÄÂÅ]', 'A'
    $a = $a -creplace '[áàäâå]', 'a'
    $a = $a -creplace '[ÓÒÖÔ]', 'O'
    $a = $a -creplace '[óòöôø]', 'o'
    $a = $a -creplace '[ÉÈËÊ]', 'E'
    $a = $a -creplace '[éèëê]', 'e'
    $a = $a -creplace '[ÍÌÏÎ]', 'I'
    $a = $a -creplace '[íìïî]', 'i'
    $a = $a -creplace '[ÚÙÜÛ]', 'U'
    $a = $a -creplace '[úùüû]', 'u'
    $a = $a -creplace 'ÿ', 'y'
    $a = $a -creplace 'ř', 'r'
    $a = $a -creplace 'æ', 'ae'
    $a = $a -creplace ',', '-'
    $a = $a -creplace '!', '-'
    $a = $a -creplace "'", '-'
    $a = $a -creplace '&', 'o'
    $a = $a -creplace '\+', 'o'
    $a = $a -creplace ' ', '_'
    return $a
}

$global:n_is_rp = 0
$global:n_not_rp = 0

function GetMedianFileTime([System.IO.DirectoryInfo] $di) {
    $allfiles = $di.GetFileSystemInfos()
    $midx = [math]::truncate($allfiles.Count / 2)
    $alldates = New-Object String[] $allfiles.Count
    For ($i = 0; $i -lt $allfiles.Count; $i++) {
        # $f = $allfiles[$i]
        # $c = $f.CreationTime
        # Write-Output "Created $c - $f"
        $alldates[$i] = $allfiles[$i].CreationTime.ToString("u")
    }
    [array]::sort($alldates)
    return $([System.DateTime] $alldates[$midx])
    # $allfiles = $di.GetFileSystemInfos() | Sort-Object -property CreationTime
    # $midx = [math]::truncate($allfiles.Count / 2)
    # return $allfiles[$midx].CreationTime
}

function ProcessDir([string] $src, [string] $dst, [string] $basedst) {
    # $src
    $srcinfo = New-Object system.IO.DirectoryInfo $src
    #$srcinfo.CreationTime.ToString("yyyy-MM-dd")
    Foreach ($srcfile in $srcinfo.GetDirectories()) { 
        $srcfilepath = Join-Path $src $srcfile
        if (IsReleasePath $srcfile) {
            $global:n_is_rp++
            Write-Output $srcfilepath >>$global:good_releases_file
            if ($dst) {
                # Create "manual" link
                $dstfilepath = Join-Path $dst $srcfile
                if (!(Test-Path $dstfilepath)) {
                    cmd /c mklink /d $dstfilepath $srcfilepath | Out-Null
                }
                # Create "by_date" link
                $mdate = GetMedianFileTime $srcfile
                $mym = "by_date\" + $mdate.ToString("yyyy_MM") 
                $datedstpath = Join-Path $basedst $mym
                $datedstrelpath = Join-Path $datedstpath $srcfile
                if (!(Test-Path $datedstpath)) {
                    md $datedstpath | Out-Null
                }
                if (!(Test-Path $datedstrelpath)) {
                    cmd /c mklink /d $datedstrelpath $srcfilepath | Out-Null
                    # Set-ItemProperty -path $datedstrelpath -name CreationTime -value $mdate
                    # $dstrel = new-object System.IO.FileInfo($datedstrelpath)
                    # $dstrel.CreationTime = $mdate
                    # $dstrel.LastWriteTime = $mdate
                }
                # Create "by_rel" link
                $srcfilestr = $srcfile.ToString()
                $rl = $srcfilestr.SubString(0, 1).ToUpper()
                if (IsNumber $rl) {
                    $rl = "0123456789"
                }
                elseif (IsVA $srcfilestr) {
                    $rl = "VA"
                }
                $reldstpath = Join-Path $basedst ("by_rel\" + $rl)
                $reldstrelpath = Join-Path $reldstpath $srcfile
                if (!(Test-Path $reldstpath)) {
                    md $reldstpath | Out-Null
                }
                if (!(Test-Path $reldstrelpath)) {
                    cmd /c mklink /d $reldstrelpath $srcfilepath | Out-Null
                }
            }
        }
        else {
            $global:n_not_rp++
            $isbadrelease = ContainsReleaseStuff $srcfilepath
            if ($isbadrelease) {
                Write-Output $srcfilepath >>$global:bad_releases_file
                Write-Output "BAAAAAAAAAAAAD Release Path: $srcfilepath" 
            }
            else {
                Write-Output $srcfilepath >>$global:non_releases_file
                Write-Output "$srcfilepath" 
                $fixedsrcfile = FixPath $srcfile
                $fixedsrcpath = Join-Path $src $fixedsrcfile
                if ($dst) {
                    $fixeddstpath = Join-Path $dst $fixedsrcfile
                }
                $fppattern = '[^a-z0-9\-_.]'
                if ($fixedsrcfile -imatch $fppattern) {
                    $fixedfix = $fixedsrcfile -ireplace $fppattern, '*'
                    Write-Output $fixedsrcpath >>$global:bad_releasified_dirs_file
                    Write-Output "BAAAAAAAAAAAAD Releasified Path: $fixedsrcpath -- $fixedfix" 
                }
                else {
                    if ($srcfile -ne $fixedsrcfile) {
                        Write-Output $fixedsrcpath >>$global:good_releasified_dirs_file
                    }
                    if ($dst -and !(Test-Path $fixeddstpath)) {
                        md $fixeddstpath | Out-Null
                    }
                }
                ProcessDir $srcfilepath $fixeddstpath $basedst
            }
        }
    }
}
if ($DstPath) {
    $ManDstPath = Join-Path $DstPath "manual"
}
ProcessDir $SrcPath $ManDstPath $DstPath

$all_end = Get-Date
$total_time = New-Timespan $all_start $all_end

$now = GetNow
Write-Output "`n"
Write-Output "Finished at $now. Processing took $total_time."
Write-Output "Found $global:n_is_rp releases."
Write-Output "Traversed $global:n_not_rp non-release dirs."

