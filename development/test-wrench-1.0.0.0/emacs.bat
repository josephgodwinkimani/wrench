@echo off
    
	rem Put your path to bash here
	cd  C:\cygwin\bin
	rem Set vars for Emacs
    set PLATFORM=cygwin
    set HOME=C:\cygwin64\home\jgodwin
    rem Use bash to start X
    rem cd C:\cygwin\bin
    bash --login -c "Emacs"
    rem emacs gets called by my .xinitrc
    rem unset vars
    rem set HOME=
    rem set PLATFORM=