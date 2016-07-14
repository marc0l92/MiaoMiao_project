::Invia un file
::
:: %1 IP destinatario
:: %2 nome del file

@echo off
title Invia file
echo.

:: verifico se i dati sono stati passati da linea di comando
set reciver=%1
set file_name=%2
if DEFINED file_name goto start

:: se non sono stati passati da linea di comando li chiedo
set /P file_name=Inserisci il nome del file da inviare: 
set /P reciver=Inserisci l'indirizzo del destinatario: 

:start
echo.
echo Invio file: %file_name%
echo Dimensione file:
call fileSize.bat %file_name%
echo Destinatario: %reciver%
nc %reciver% 55556 -w 1 -vv < %file_name%