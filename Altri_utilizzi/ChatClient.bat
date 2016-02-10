@echo off
set ip=%1

title Chat client
if DEFINED ip goto start
set /P ip=Inserisci l'ip a cui vuoi connetterti(porta=55554): 

:start
echo Collegamento alla chat...
nc %ip% 55554 -vv
echo Connessione interrotta
goto start