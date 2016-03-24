@ECHO OFF
title test-results
color A1
echo ISSUE #1
echo Executing npm from DOS batch file terminates the script #2938
echo 		--execution of the batch file terminates after npm completes.
echo 		https://github.com/npm/npm/issues/2938
echo STATUS: PENDING
echo same issue as: [Windows] Problem with executing package binaries from bat file #3281
echo 		https://github.com/npm/npm/issues/3281
echo STATUS: PENDING
PAUSE
echo ISSUE #2
echo MANPAGES command fails..
echo STATUS: SOLVED!
PAUSE
echo ISSUE #3 
echo Build was crashing all the time
echo STATUS: SOLVED!
PAUSE
echo ISSUE #4
echo Trying to supress batch job: If you choose "N" the program exits
echo STATUS: PENDING
PAUSE
