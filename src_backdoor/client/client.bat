:: Program to connect to a miaomiao server

@echo off
set ip=%1

if DEFINED ip goto start
set /P ip=Insert the server IP (port=55555):

:start
nc -vv %ip% 55555

:: Retry the connection
echo.
echo Connection closed
set /P retry=Do you want to restart the connection(y/N):
if %retry%==n goto end
goto start

:end
exit
