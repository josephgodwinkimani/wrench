@ECHO OFF
  
REM PUSHD %1
cd "C:\Programs Without Installer\bat\"

PowerShell -File copy_film_nfos.ps1 D:\dc\share\x264_1080p d:\data\nfos\film

REM call copy_nfos.bat D:\dc\share\x264_1080p d:\data\nfos\film nowait
REM call copy_nfos.bat D:\dc\share\x264_custom d:\data\nfos\film nowait
REM call copy_nfos.bat D:\dc\share\xvid d:\data\nfos\film nowait

REM call copy_nfos.bat M:\dc\share\dvdr d:\data\nfos\film nowait

REM call copy_nfos.bat O:\dc\share\dvdr d:\data\nfos\film nowait
REM call copy_nfos.bat O:\dc\share\x264_720p d:\data\nfos\film nowait

REM call copy_nfos.bat P:\dc\share\dvdr d:\data\nfos\film nowait
REM call copy_nfos.bat P:\dc\share\x264_1080p d:\data\nfos\film nowait

:s_end
REM POPD

pause
