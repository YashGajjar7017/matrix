@echo off
title loading ... please wait 
color a 
set load=
set/a loadnum = 0

:loading 
set load =%load%Û
cls
echo.
echo loading ... please wait...
echo ----------------------------------------------------------------------------------------------------------------------
echo %load%
echo ----------------------------------------------------------------------------------------------------------------------
ping localhost-n 2 >nul

set/a loadnum = %loadnum% + 1
if %loadnum%==100 goto done

goto loading
:done
echo.
echo loading complete ...
pause
 
exit 