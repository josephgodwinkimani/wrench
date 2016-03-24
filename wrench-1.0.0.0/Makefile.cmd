@echo off
set PATH=%systemroot%;C:\Windows\Microsoft.NET\Framework64\v3.5
if "%NETCF_PATH%" == "" (
  set "NETCF_PATH=C:\Program Files\Microsoft.NET\SDK\CompactFramework\v3.5\WindowsCE" )
set SDK_PATH="%NETCF_PATH%"
vbc prompt.vb

SET MAC=00:00:00:00:00:00
%~dp0mc-wol.exe %MAC%
start cmd.exe /k "prompt"

