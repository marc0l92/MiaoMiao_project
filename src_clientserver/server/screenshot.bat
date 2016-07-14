::Crea uno screenshot della scehermata corrente e lo invia

@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

:: verifico se i dati sono stati passati da linea di comando
set reciver=%1
if DEFINED reciver goto start

:: se non sono stati passati da linea di comando li chiedo
set /P reciver=Inserisci l'indirizzo del destinatario: 

:start
echo Creazione screenshot in corso...
CmdCapture.exe /f screenshot.png > nul
echo Creazione completata.
echo Dimensione immagine (byte):
call FileSize.bat screenshot.png
echo Invio screenshot..
call InviaC2.bat %reciver% screenshot.png
del screenshot.png
