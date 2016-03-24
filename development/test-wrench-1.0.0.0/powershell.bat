echo executed windows powershell...
@echo off
@START "" "C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe"
:command
REM using "WMIC os GET LocalDateTime" as a source, since it's in ISO order (http://stackoverflow.com/questions/203090/how-to-get-current-datetime-on-windows-command-line-in-a-suitable-format-for-us)
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%

set /p input=[%ldt%]\%username%@%computername%:~$

%input%
wmic cpu get loadpercentage
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
echo success at: %mydate%_%mytime%
goto command echo 