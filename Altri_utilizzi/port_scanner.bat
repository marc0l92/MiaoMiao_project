@echo off
title Port scanner
echo ##### Port scanner #####
echo.
set ip=%1
set start_port=%2
set end_port=%3

if DEFINED end_port goto start
set /P ip=Inserisci l'ip da scansionare: 
set /P start_port=Inserisci la porta da cui partire a scansionare(1-65535): 
set /P end_port=Inserisci l'ultima porta da scansionare(1-65535): 
echo Avvio...
echo.

:start
nc %ip% %start_port%-%end_port% -v -v -z
pause
