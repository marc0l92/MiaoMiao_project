::Invia un report all'interfaccia web di raccolta report

@echo off
title Report Emperor
set title=IPAddress
set message=
set /P message=Inserisci il messaggio(spazi e caratteri speciali non consentiti): %=%
set sender=%USERNAME%~%USERDOMAIN%
set username=miaomiao

echo Invio del report in corso:
echo TITLE: %title%
echo MESSAGE: %message%
echo SENDER: %sender%
echo USERNAME: %username%
wget -qO - http://emperorpro.altervista.org/Utilities/ErrorReporter.php?title=%title%^&message=%message%^&sender=%sender%^&username=%username% > Report-Log.log
echo Report inviato con successo.