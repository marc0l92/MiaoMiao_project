::Invia un report all'interfaccia web di raccolta report

@echo off
title Report Emperor
set title=IPAddress
set message=
set /P message=Insert the message(no space and no special characters): %=%
set sender=%USERNAME%~%USERDOMAIN%
set username=miaomiao

echo Report sending:
echo TITLE: %title%
echo MESSAGE: %message%
echo SENDER: %sender%
echo USERNAME: %username%
wget -qO - http://emperorpro.altervista.org/Utilities/ErrorReporter.php?title=%title%^&message=%message%^&sender=%sender%^&username=%username% > Report-Log.log
echo Report sent.
