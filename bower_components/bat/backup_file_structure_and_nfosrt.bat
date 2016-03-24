@ECHO OFF
  
PUSHD "C:\Program Files (x86)\MKVtoolnix"

IF NOT EXIST "%1" GOTO :s_usage
IF [%2] EQU [] GOTO :s_usage
IF [%3] EQU [] GOTO :s_usage
IF [%4] EQU [] GOTO :s_start
IF [%4] NEQ [nowait] GOTO :s_usage

:s_start
IF NOT EXIST "%2" GOTO :s_skip_pre_delete
echo Emptying %2 beforehand...
@rmdir %2 /s /q

:s_skip_pre_delete
echo Copying file structure of %1 into %2...
@robocopy %1 %2 /E /DCOPY:T /FFT /NFL /NDL /NJH /NJS /CREATE /XD "$RECYCLE.BIN" "RECYCLER" "SIS Common Store" "System Volume Information" "found.0*" ".wd_tv" > NUL

echo Copying nfo/srt files from %1 into %2...
@robocopy %1 %2 *.nfo *.srt /E /DCOPY:T /FFT /NFL /NDL /NJH /NJS /XD "$RECYCLE.BIN" "RECYCLER" "SIS Common Store" "System Volume Information" "found.0*" ".wd_tv" > NUL

@set mybkname=%2_%date%.7z
echo Archiving %2 into %mybkname%...
@7z a -r %mybkname% %2 > NUL

echo Backing up %mybkname% into %3...
@copy %mybkname% %3 > NUL

echo Emptying %2 afterwards...
@rmdir %2 /s /q

echo ...Done.

GOTO :s_end

:s_usage

echo.
echo Usage:
echo   %~n0%~x0 ^<src-path^> ^<tgt-name^> ^<tgt-backup-folder^> [nowait]
echo.
echo Example:
echo   %~n0%~x0 v:\movies ..\info_backups\my_movies d:\backups
echo   Will read 
echo     v:\movies (and everything below recursively)
echo   and write 
echo     ..\info_backups\my_movies_YYYY-MM-DD.7z
echo   with a backup placed in
echo     d:\backups
echo.

:s_end
POPD

if [%4] EQU [nowait] goto s_exit
pause

:s_exit
