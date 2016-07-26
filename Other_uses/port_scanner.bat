@echo off
title Port scanner
echo ##### Port scanner #####
echo.
set ip=%1
set start_port=%2
set end_port=%3

if DEFINED end_port goto start
set /P ip=Insert the IP address to scan:
set /P start_port=Insert the start scanning port(1-65535):
set /P end_port=Insert the end scanning port(1-65535):
echo Starting...
echo.

:start
nc %ip% %start_port%-%end_port% -v -v -z
pause
