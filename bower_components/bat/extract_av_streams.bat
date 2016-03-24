::Dragdrop.cmd
@ECHO OFF
  
:: Use this code stub as the basis for drag drop batch files

:: You can drag and drop multiple files (or folders)
:: If files are dropped it will return the long pathname of each file.

:: If folders are dropped it will return the long pathname of
:: each folder (but not the files in those folders)

PUSHD %~dp0   
REM IF NOT EXIST short2long.cmd ECHO Error&pause&GOTO :s_end

:s_next
IF ["%1"] EQU [""] GOTO :myexit
  
REM CALL short2long %1
  
:: At this point ECHO %v_short2Long%
:: will display the long pathname of the current file
REM ECHO %v_short2Long%
ECHO %1

:: Add other commands here

:: See http://www.ffmpeg.org/ffmpeg.html#SEC1 for docs
set my_aout=%~dpn1_audio

@ECHO ON
ffmpeg -y -i %1 -vn -codec:a copy -f adts -strict -2 %my_aout%.aac
REM faad -a %my_aout%_adts.aac %my_aout%.aac
@ECHO OFF

SHIFT
GOTO :s_next

:s_end
POPD

:myexit
pause
