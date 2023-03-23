@echo off
set /p ip=Enter IP address to ping: 
set online=false
echo Pinging %ip% ...
:loop
ping -n 1 %ip%
if %errorlevel%==0 (
    set online=true
) else (
    timeout /t 1 >nul
    goto loop
)
echo %ip% is online.
pause