@echo off

set MYEXE_CMV="c:\programs without installer\bat\create_linked_mkv.bat"
set MYOUTPATH_CMV="E:\data\video_rips\HemTillByn\_done"

goto s_spec

mkdir %MYOUTPATH_CMV%\S01
call %MYEXE_CMV% %MYOUTPATH_CMV% S01 htb_s01e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S01 htb_s01e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S01 htb_s01e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S01 htb_s01e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S01 htb_s01e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S01 htb_s01e06 "-muxed.mkv" "_srcorr_sesc.srt"

:s_1
mkdir %MYOUTPATH_CMV%\S02
call %MYEXE_CMV% %MYOUTPATH_CMV% S02 htb_s02e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S02 htb_s02e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S02 htb_s02e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S02 htb_s02e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S02 htb_s02e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S02 htb_s02e06 "-muxed.mkv" "_srcorr_sesc.srt"

goto s_2

mkdir %MYOUTPATH_CMV%\S03
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e06 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e07 "-muxed.mkv" "_srcorr_sesc.srt"
:s_spec
call %MYEXE_CMV% %MYOUTPATH_CMV% S03 htb_s03e08 "-muxed.mkv" "_srcorr_sesc.srt"
goto s_end

:s_2
mkdir %MYOUTPATH_CMV%\S04
call %MYEXE_CMV% %MYOUTPATH_CMV% S04 htb_s04e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S04 htb_s04e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S04 htb_s04e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S04 htb_s04e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S04 htb_s04e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S04 htb_s04e06 "-muxed.mkv" "_srcorr_sesc.srt"

goto s_end

mkdir %MYOUTPATH_CMV%\S05    
call %MYEXE_CMV% %MYOUTPATH_CMV% S05 htb_s05e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S05 htb_s05e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S05 htb_s05e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S05 htb_s05e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S05 htb_s05e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S05 htb_s05e06 "-muxed.mkv" "_srcorr_sesc.srt"
                         
mkdir %MYOUTPATH_CMV%\S06    
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e06 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e07 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S06 htb_s06e08 "-muxed.mkv" "_srcorr_sesc.srt"
                         
mkdir %MYOUTPATH_CMV%\S07    
call %MYEXE_CMV% %MYOUTPATH_CMV% S07 htb_s07e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S07 htb_s07e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S07 htb_s07e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S07 htb_s07e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S07 htb_s07e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S07 htb_s07e06 "-muxed.mkv" "_srcorr_sesc.srt"
                         
mkdir %MYOUTPATH_CMV%\S08    
call %MYEXE_CMV% %MYOUTPATH_CMV% S08 htb_s08e01 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S08 htb_s08e02 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S08 htb_s08e03 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S08 htb_s08e04 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S08 htb_s08e05 "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% S08 htb_s08e06 "-muxed.mkv" "_srcorr_sesc.srt"

:s_end

pause
