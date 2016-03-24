@echo off

set MYEXE="c:\programs without installer\bat\create_mkv.bat"

REM %1 is absolute output path
REM %2 is path leaf (i.e. last dir)
REM %3 is output name (without extension)
REM %4 is input name suffix 1
REM %5 is input name suffix 2

call %MYEXE% %1\%2\%3.mkv ..\%3%4 ..\%3%5 nowait

