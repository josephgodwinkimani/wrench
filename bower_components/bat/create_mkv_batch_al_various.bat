@echo off

set MYEXE_CMV="c:\programs without installer\bat\create_linked_mkv_2.bat"
set MYOUTPATH_CMV="E:\data\video_rips\AstridLindgren\__Out"

mkdir %MYOUTPATH_CMV%\Muxed
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed AstridLJ "-muxed.mkv" "_srcorr_sesc.srt"
goto s_next

call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed BarnenIBAV "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed BarnenIBMOO "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed BrodernaL "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed EmilIL "-muxed.mkv" "_srcorr_sesc.srt"

:s_next
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed EmilNHA "-muxed.mkv" "_srcorr_sesc.srt"
goto s_end

call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed EmilOG "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed KalleBMLF "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed KalleBOR "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed KarlssonPT "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed Lotta2LFH "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed LottaPB "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed MadickenDAIK "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed MadickenPJ "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed MioMM "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed NilsKP "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PeterOP "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiLPDSH "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed PippiPRM "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed RasmusPL "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed RonjaR "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed SkrallanROK "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed TjorvenBOM "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed TjorvenOM "-muxed.mkv" "_srcorr_sesc.srt"
call %MYEXE_CMV% %MYOUTPATH_CMV% Muxed TjorvenOS "-muxed.mkv" "_srcorr_sesc.srt"

:s_end

pause

