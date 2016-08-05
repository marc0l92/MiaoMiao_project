@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

title Commands menu
echo ### Commands menu ###
:start
echo.
echo Choose a command:
echo  0 - Exit
echo  1 - Send a file
echo  2 - Receive a file
echo  3 - Send a screenshot
echo  4 - Start a chat session

:: echo 90 - View local IP address
echo 99 - Unistall MiaoMiao

set /P command=-^> 

if "%command%" == "0"  goto end
if "%command%" == "1"  goto command1
if "%command%" == "2"  goto command2
if "%command%" == "3"  goto command3
if "%command%" == "4"  goto command4
:: if "%command%" == "90" goto command90
if "%command%" == "99" goto command99
echo Option not valid.
:: wait a second
ping 1.1.1.1 -n 1 -w 1000 > nul
goto start

:command1
call SendFile.bat
goto end

:command2
call ReceiveFile.bat
goto end

:command3
call Screenshot.bat
goto end

:command4
start ChatServer.bat
goto end

:: :command90
:: set ip_address_string="IPv4 address"
:: for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo IP address:%%f
:: :: wait a second
:: ping 1.1.1.1 -n 1 -w 1000 > nul
:: goto start

:command99
call MiaoMiao.bat -u
goto end

:end
::exit
