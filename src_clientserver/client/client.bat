:: Programma per la connessione ad un server miaomiao

@echo off
set ip=%1

if DEFINED ip goto start
set /P ip=Inserisci l'ip a cui vuoi connetterti(porta=55555): 

:start
nc -vv %ip% 55555

:: riprovo la connessione
echo.
echo Connessine terminata
set /P riprova=Vuoi riprovare a connetterti(s/N): 
if %riprova%==n goto end
goto start

:end
exit
