::Invia un file
::
:: %1 IP destinatario
:: %2 nome del file

@echo off
title Invia file
echo.
echo Invio file: %2
echo Dimensione file: %~z2
echo Destinatario: %1
nc %1 55556 -vv -w 1 < %2