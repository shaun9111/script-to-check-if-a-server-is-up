@echo off
set fnm=C:\Users\Shaun\Desktop\computers.txt
set lnm=C:\Users\Shaun\Desktop\ping.txt

if exist %fnm% goto Label1

echo.
echo Cannot find %fnm%
echo.
Pause
goto :eof

:Label1
echo PingTest STARTED on %date% at %time% > %lnm%
echo ================================================= >> %lnm%
echo.
for /f %%i in (%fnm%) do call :Sub %%i
echo.
echo ================================================= >> %lnm%
echo PingTest ENDED on %date% at %time% >> %lnm%
echo ... now exiting
goto :eof

:Sub
echo Testing %1
set state=alive
ping -n 1 %1 
if errorlevel 1 set state=dead
echo %1 is %state% >> %lnm%