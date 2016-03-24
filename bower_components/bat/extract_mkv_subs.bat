@ECHO OFF
  
PUSHD "C:\Program Files (x86)\MKVtoolnix"

IF NOT EXIST "%1" GOTO :s_usage
IF [%2] EQU [] GOTO :s_usage
IF [%3] EQU [] GOTO :s_start
IF [%3] NEQ [nowait] GOTO :s_usage

:s_start
echo Extracting from %1...

mkvextract tracks %1 2:%~dp1\%2.srt

echo ...Done.

GOTO :s_end

:s_usage

echo.
echo Usage:
echo   %~n0%~x0 ^<mkv-file^> ^<relative-srt-name^> [nowait]
echo.
echo Example:
echo   %~n0%~x0 c:\data\mkv\movie-x264.mkv ..\my_mkv_subs
echo   Will read 
echo     c:\data\mkv\movie-x264.mkv
echo   and write 
echo     c:\data\my_mkv_subs.srt
echo.

:s_end
POPD

if [%3] EQU [nowait] goto s_exit
pause

:s_exit
