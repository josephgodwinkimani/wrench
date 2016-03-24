@echo off
rem Start bash as interactive shell

rem Put your path to bash here
cd  C:\cygwin\bin

rem Set vars for Emacs
set CYGWIN=tty title
set TERM=ansi
set HOME=C:\cygwin64\home\jgodwin

bash --login -i

rem Does this really unset?
rem Answer: No, it is pointless to put the following at the *end* of a
rem         batch file.  Environment variables are local to the process in
rem         which they are set.  Child processes inherit the environment of
rem         their parent *at the time the child process is started*.
rem set HOME=
rem set TERM=
rem set CYGWIN=