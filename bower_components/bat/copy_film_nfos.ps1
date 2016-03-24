#Clear Host
Param($SrcPath, $DstPath)
$app = $MyInvocation.MyCommand.Name
Write-Output "Running $app..."
Write-Output "Source     : $SrcPath"
Write-Output "Destination: $DstPath"

$all_start = Get-Date

function GetNow() {
    return Get-Date -format "yyyy-MM-dd HH:mm:ss"
}
$now = GetNow
$file_header = "File created at $now.`n"

function IsReleasePath([string] $a) {
    return $a -imatch '^[0-9a-z()_\.]+-[0-9a-z()_\.-]+[0-9()-]*-[0-9a-z_\.-]+$'
}

function IsNumber([string] $a) {
    return $a -imatch '^[0-9]+$'
}

function IsVA([string] $a) {
    return ($a -imatch '^VA[_-]') -or ($a -imatch '^Various[_-]')
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

function ProcessDir([string] $src, [string] $dst) {
    $src
    $srcinfo = New-Object system.IO.DirectoryInfo $src
    Foreach ($srcfile in $srcinfo.GetDirectories("*", [System.IO.SearchOption]::AllDirectories)) { 
        $dstfilepath = Join-Path $dst 
    }
}
ProcessDir $SrcPath $DstPath

$all_end = Get-Date
$total_time = New-Timespan $all_start $all_end

$now = GetNow
Write-Output "`n"
Write-Output "Finished at $now. Processing took $total_time."
Write-Output "Found $global:n_is_rp releases."
Write-Output "Traversed $global:n_not_rp non-release dirs."

