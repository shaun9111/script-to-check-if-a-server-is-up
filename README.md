To ping multiple computers and generate report via cmd, please refer to the script below, the "fnm" is computer name list and the "lnm" is the result, and you can save the script below as .bat file. Make sure you chang the path in the script. You can copy the script and make your own or you can download the files.  





@echo off  
set fnm=d:\test1\computers.txt  
set lnm=d:\test1\ping.txt  

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
