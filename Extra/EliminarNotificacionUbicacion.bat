@echo off
echo Desactivando la notificacion de uso de ubicacion en Windows...

:: Se usa PowerShell para modificar el registro
powershell.exe -Command "Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location' -Name 'Value' -Value 'Deny' -Type String -Force"

echo.
echo Configuracion actualizada.
echo La notificacion de uso de la ubicacion por parte de las aplicaciones ha sido deshabilitada.
echo.
pause