REM @ECHO OFF
  
PUSHD %1

IF [%1] EQU [] GOTO :s_usage
IF [%2] EQU [] GOTO :s_usage
IF [%3] EQU [] GOTO :s_start
IF [%3] NEQ [nowait] GOTO :s_usage

:s_start
echo Searching %1...

for /r /d %%d in (*) do (
    if not exist "%2\%%~nxd.nfo" (
        for %%f in ("%%d\*.nfo") do (
            echo Copying new nfo "%%~nxd"...
            copy "%%f" "%2\%%~nxd.nfo"
        )
    )
)

echo ...Done.

GOTO :s_end

:s_usage

echo.
echo Usage:
echo   %~n0%~x0 ^<source-dir^> ^<destination-dir^> [nowait]
echo.
echo Example: TBD
echo.

:s_end
POPD

if [%3] EQU [nowait] goto s_exit
pause

:s_exit
