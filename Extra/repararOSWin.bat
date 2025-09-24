@echo off
echo.
echo ----------------------------------------------------
echo Iniciando reparacion del sistema de Windows...
echo ----------------------------------------------------
echo.
echo 1. Escaneando y reparando archivos de sistema (SFC)...
sfc /scannow
echo.
echo ----------------------------------------------------
echo 2. Reparando la imagen del sistema (DISM)...
echo ----------------------------------------------------
echo.
Dism /Online /Cleanup-Image /ScanHealth
Dism /Online /Cleanup-Image /CheckHealth
Dism /Online /Cleanup-Image /RestoreHealth
echo.
echo ----------------------------------------------------
echo El proceso ha finalizado.
echo ----------------------------------------------------
pause