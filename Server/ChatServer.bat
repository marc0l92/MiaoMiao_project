::Avvia un servizio per la chat

@echo off
title Chat server
:: Trova l'indirizzo ip locale
set ip_address_string="Indirizzo IPv4"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo Indirizzo ip:%%f
echo Servizio chat avviato.
echo.
:: nc
:: -l ospita una connessione
:: -p specifica porta da usare
nc.exe -l -vv -p 55554
echo Servizio chat terminato.