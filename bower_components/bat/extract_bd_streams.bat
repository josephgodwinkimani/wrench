@ECHO OFF
  
REM PUSHD "C:\Program Files (x86)\MKVtoolnix"

IF NOT EXIST "%1" GOTO :s_usage
IF [%2] EQU [] GOTO :s_start_listonly
IF [%3] EQU [] GOTO :s_start
IF [%3] NEQ [nowait] GOTO :s_usage

:s_start
echo Extracting from %1, title %2...

eac3to "%1" %2) 6: "%~dp1%~n1_t0%2"\t0%2.sup

echo ...Done.

GOTO :s_end

:s_start_listonly
echo Listing titles from %1...

eac3to "%1" >"%~dp1%~n1.txt"

echo ...Done.

GOTO :s_end

:s_usage

echo.
echo Usage:
echo   %~n0%~x0 ^<bd-folder^> ^<title-number^> [nowait]
echo.
echo Example:
echo   %~n0%~x0 c:\data\bd\MY_BD_DISC 7
echo.
echo   Will extract stuff from title 7
echo.

:s_end
REM POPD

if [%3] EQU [nowait] goto s_exit
if [%2] EQU [] goto s_exit
pause

:s_exit
