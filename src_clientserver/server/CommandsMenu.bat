@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

title Commands menu
echo ### Commands menu ###
:start
echo.
echo Choose a command:
echo 0 - Exit
echo 1 - Send a file
echo 2 - Receive a file
echo 3 - Send a screenshot
echo 4 - Start a chat session

echo 90 - View local IP address
echo 99 - Unistall MiaoMiao

set /P comando=-^>

if %comando%==0  goto end
if %comando%==1  goto command1
if %comando%==2  goto command2
if %comando%==3  goto command3
if %comando%==4  goto command4
if %comando%==90 goto command90
if %comando%==99 goto command99
echo Option not valid.
:: wait a second
ping 1.1.1.1 -n 1 -w 1000 > nul
goto start

:command1
call SendClient.bat
goto end

:command2
call ReceiveServer.bat
goto end

:command3
call Screenshot.bat
goto end

:command4
start ChatServer.bat
goto end

:command90
set ip_address_string="IPv4 address"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo IP address:%%f
:: wait a second
ping 1.1.1.1 -n 1 -w 1000 > nul
goto start

:command99
call Unistall.bat
goto end

:end
::exit
