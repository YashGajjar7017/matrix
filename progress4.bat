@echo off
set load=
set loadnum=0
set flash=0

set installspeed=2
set myapp=notepad.exe

:progressinstall
set load=%load%!
cls
echo.
echo.
echo.
echo  INSTALLING PLEASE WAIT
echo --------------------------------------------------------------------------------------------------------------------
echo  %load%
echo --------------------------------------------------------------------------------------------------------------------
ping localhost -n %installspeed% >nul
set/a loadnum=%loadnum% +1
set/a flash=%flash% +1
if %flash% == 9 set flash=0
color 0%flash%
if %loadnum% == 24 set/a loadnum=0 & set load=
tasklist | find "%myapp%" > NUL
If errorlevel 1 goto installcomplete
goto progressinstall

:installcomplete
color 07
cls
echo.
echo.
echo.
echo  INSTALLATION COMPLETE
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
pause
cls
exit