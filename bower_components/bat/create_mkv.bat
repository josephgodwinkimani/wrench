@ECHO OFF
  
PUSHD "C:\Program Files (x86)\MKVtoolnix"

IF [%1] EQU [] GOTO :s_usage
IF [%2] EQU [] GOTO :s_usage
IF [%3] EQU [] GOTO :s_usage
IF [%4] EQU [] GOTO :s_start
IF [%4] NEQ [nowait] GOTO :s_usage

:s_start
echo Creating %1...

mkvmerge -o "%1" --default-language swe %~dp1%2 %~dp1%3
::mkvmerge -o "%1" --default-language swe --language 1:swe %~dp1%2 %~dp1%3

echo ...Done.

GOTO :s_end

:s_usage

echo.
echo Usage:
echo   %~n0%~x0 ^<mkv-out-file^> ^<in-name^> ^<in-name^> [nowait]
echo.
echo Example:
echo   %~n0%~x0 c:\data\mkv\movie-x264.mkv ..\test.mkv ..\apa\test_sub.srt
echo   Will write
echo     c:\data\mkv\movie-x264.mkv
echo   with info from 
echo     c:\data\test.mkv and
echo     c:\data\apa\test_sub.srt
echo.

:s_end
POPD

if [%4] EQU [nowait] goto s_exit
pause

:s_exit
