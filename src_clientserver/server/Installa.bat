::Esegue le operazioni preliminari di inizializzazione del programma

@echo off
::taskkill.exe /f /im nc.exe
call "EsecuzioneAutomatica.bat"
call "AggiungereEccezioneFirewall.bat"
:: silentRun.exe "InviaIP.bat"
call "Server.bat"