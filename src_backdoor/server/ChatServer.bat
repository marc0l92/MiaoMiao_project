::Start a chat service

@echo off
title Chat server
:: Find the local IP address
set ip_address_string="IP address"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo IP address:%%f
echo Chat service started.
echo.

:: nc
:: -l wait for a connection
:: -p specify the port
nc.exe -l -vv -p 55554
echo Chat service closed.
