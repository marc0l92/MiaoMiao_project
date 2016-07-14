@echo off
title Report Emperor
set title=title
set message=message
set sender=sender
set username=admin

echo Invio del report in corso:
echo TITLE: %title%
echo MESSAGE: %message%
echo SENDER: %sender%
echo USERNAME: %username%
wget -qO - http://emperorpro.altervista.org/Utilities/ErrorReporter.php?title=%title%^&message=%message%^&sender=%sender%^&username=%username% > Report-Log.log
echo Report inviato con successo.