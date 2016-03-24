@echo off

set MYEXE_CMV="c:\programs without installer\bat\create_linked_mkv_2.bat"
set MYOUTPATH_CMV="E:\data\video_rips\PippiL\_Out"

mkdir %MYOUTPATH_CMV%\Muxed
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE06 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE07 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE08 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE09 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE10 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE11 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE12 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiE13 "-muxed.mkv" "_srcorr_sesc.srt"

:s_end

pause
