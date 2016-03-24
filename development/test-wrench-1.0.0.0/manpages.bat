@echo off
title wrench
echo Time to use a wrench!
echo:
:main
echo ++++++++++++++++++++Wrench Commands
echo stop 			[EXIT]
echo play 		    [START] command-prompt
echo cleanup 		[Automated cleanup of Temp files, recycle bin]
echo destroy 	    [Matrix Safety Belt]
echo reset 			[CLEAR] [CLS]
echo bye 			[SHUTDOWN] Turns off your PC
echo du 			[DIRUSE[] display disk usage
echo chmod 			[iCACLS[] Change file and folder permissions
echo mv 			[REN[] Move (Rename) a oldname to newname. 
echo rm 			[DEL] [ERASE] Delete a filename
echo mail 			[MSG] Send a message
echo cmp 			[COMP] Compare the contents of two files
echo logout 		[LOGOFF] Log a user off
echo Passwd 		[PsPasswd] Change User password
echo useradd 		[ADDUSERS] Add a list of users to\from a CSV file
echo ls 			[DIR] Display a list of files and folders
echo cp 			[COPY] Copy file into another destination
echo cat 			[WHERE] Locate and display files in a directory tree
echo mancommand 	[For a List of commands [no spacing like in UNIX]
echo manpages 		[For List of wrench commands]
echo bye -t 0 -r -f [force an immediate reboot]
echo bye -t 30 -r 	[friendly reboot]
echo attrib -s -h *.* /s /d [Remove a virus from a flash drive]
echo:
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