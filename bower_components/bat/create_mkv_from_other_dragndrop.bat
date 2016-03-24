::Dragdrop.cmd
@ECHO OFF
  
:: Use this code stub as the basis for drag drop batch files

:: You can drag and drop multiple files (or folders)
:: If files are dropped it will return the long pathname of each file.

:: If folders are dropped it will return the long pathname of
:: each folder (but not the files in those folders)

REM PUSHD %~dp0   
REM IF NOT EXIST short2long.cmd ECHO Error&pause&GOTO :s_end

:s_next
IF [%1] EQU [] GOTO :s_end

REM CALL short2long %1
  
:: At this point ECHO %v_short2Long%
:: will display the long pathname of the current file
REM ECHO %v_short2Long%
ECHO %1

:: Add other commands here

::mkvextract tracks %1 1:%~dp1\%~n1.srt
::mkvmerge -o %~dp1\%~n1.mkv %1
set OUTFILE=%~dp1\%~n1.mkv
mkvmerge -o %OUTFILE% %1
::mkvpropedit %OUTFILE% --edit track:v1 --set language=swe 
::mkvpropedit %OUTFILE% --edit track:a1 --set language=swe 
::mkvextract tracks %1 3:%~dp1\%~n1.sup

@rem java -jar BDSup2Sub.jar %1 %~dpn1_720p.sup /res:720p

SHIFT
GOTO :s_next

:s_end
POPD

pause
