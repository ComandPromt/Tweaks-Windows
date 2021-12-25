@echo off
reg add HKCR\lnkfile /f /v IsShortcut /t REG_SZ
exit