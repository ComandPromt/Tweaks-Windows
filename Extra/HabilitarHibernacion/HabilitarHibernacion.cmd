:: (c) Norfipc 2010 - http://norfipc.com
:: Use at your own risk. No warranty express or implied.
:: Permission granted to copy, distribute and modify, provided 
:: this message is not removed.
@echo off
cls
color 0F
Title Habilitar Hibernacion
:hibernacion
cls
echo Escoge una opcion:
echo.
echo 1. Saber si mi PC soporta la hibernacion
echo.
echo 2. Habilitar Hibernacion
echo.
echo 3. Deshabilitar la hibernacion
echo.
echo 4. Salir
echo.

set /p hib=Escriba el numero deseado y presione ENTER
if %hib%==1 goto Probar
if %hib%==2 goto Hab
if %hib%==3 goto Des
if %hib%==4 goto Salir

:Probar
cls
@echo off
echo NOTA Tu equipo debe de admitir alguno de los  3 estados de suspension
echo.
powercfg /a
pause>nul
goto hibernacion



:Hab
cls
@echo off
powercfg -h on
echo Esta habilitada la hibernacion
pause
goto:Salir

:Des
cls
@echo off
powercfg -h off
echo Esta deshabilitada la hibernacion
pause
exit

:Salir
msg * Puede encontrar mas scripts utiles en http://norfipc.com 