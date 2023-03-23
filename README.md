Here's a batch script that will allow you to input an IP address and then ping that address until the IP address is online. This is usefull for pinging game servers that are down, like mmo's and custom servers.




```ruby
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
```









Here's how the script works:

    The first line "@echo off" turns off the display of each command in the command prompt window.

    The "set /p" command prompts the user to enter an IP address and stores it in the "ip" variable.

    The "set online=false" command initializes a flag to keep track of whether the IP address is online.

    The "echo Pinging %ip% ..." command displays a message indicating that the script is attempting to ping the specified IP address.

    The ":loop" label starts a loop that will repeatedly ping the IP address until it is online.

    The "ping -n 1 %ip%" command sends a single ping request to the specified IP address.

    The "if %errorlevel%==0" command checks if the ping was successful. If the ping was successful, the script sets the "online" flag to true and exits the loop.

    If the ping was not successful, the "timeout /t 1 >nul" command waits for 1 second before the loop repeats.

    The "goto loop" command jumps back to the beginning of the loop to repeat the process.

    Once the IP address is online, the script displays a message indicating that the IP address is online, and then pauses the script.

To use the script, simply open Notepad or any text editor, copy and paste the above code into the editor, save it with a .bat extension (e.g., ping_until_online.bat), and then run the script. Alternatively you can downlaod the pre-made script I made. The user will be prompted to enter an IP address to ping, and the script will ping the IP address until it is online.
