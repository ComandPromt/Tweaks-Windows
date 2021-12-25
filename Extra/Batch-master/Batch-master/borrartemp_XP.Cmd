@echo off
Title Borrar archivos temporales


cd C:\Windows\Temp\
DEL *.*  /S /F /Q /A R H S A

cd %USERPROFILE%\AppData\Local\Temp
DEL *.*  /S /F /Q /A R H S A
CLS


cd %USERPROFILE%\AppData\Local\Microsoft\Windows\"Temporary Internet Files"\
DEL *.*  /S /F /Q /A R H S A

del /f /s /q "C:\Documents and Settings\%username%\Configuración local\Temp\*.*" 

exit




