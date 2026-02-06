@echo off
chcp 65001 >nul

net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

title Herramienta de Reparacion de Windows

:: ----------------------------------------------------------------
:menu
cls
echo.
echo===============================================================================================
echo.
echo      ██████╗ ███████╗██████╗  █████╗ ██╗██████╗     ██╗  ██╗██╗████████╗
echo      ██╔══██╗██╔════╝██╔══██╗██╔══██╗██║██╔══██╗    ██║ ██╔╝██║╚══██╔══╝
echo      ██████╔╝█████╗  ██████╔╝███████║██║██████╔╝    █████╔╝ ██║   ██║
echo      ██╔══██╗██╔══╝  ██╔═══╝ ██╔══██║██║██╔══██╗    ██╔═██╗ ██║   ██║
echo      ██║  ██║███████╗██║     ██║  ██║██║██║  ██║    ██║  ██╗██║   ██║
echo      ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝   ╚═╝
echo.
echo===============================================================================================
echo.

echo.
echo                ╔════════════════════════════════╗
echo                ║ 1 - Ejecutar DISM              ║
echo                ║ 2 - Ejecutar SFC               ║
echo                ║ 3 - Comprobar Disco (CHKDSK)   ║
echo                ║ 4 - Diagnostico Rapido         ║
echo                ║ 0 - Salir                      ║
echo                ╚════════════════════════════════╝
echo.


choice /c 12340 /n /m " Seleccione una opcion: "

if errorlevel 5 goto salir
if errorlevel 4 goto vrf
if errorlevel 3 goto chkdsk
if errorlevel 2 goto sfc
if errorlevel 1 goto dism

:dism
cls
echo.
echo Ejecutando DISM...
echo.
DISM /Online /Cleanup-Image /RestoreHealth
pause
goto menu

:sfc
cls
echo.
echo Ejecutando SFC...
echo.
sfc /scannow
pause
goto menu

:chkdsk
cls
echo.
echo Ejecutando CHKDSK...
chkdsk C: /f
pause
goto menu

:vrf
cls
echo.
echo Verificando Sistema...
sfc /verifyonly
pause
goto menu

:salir
echo.
echo Saliendo del programa...
timeout /t 2 >nul
exit

