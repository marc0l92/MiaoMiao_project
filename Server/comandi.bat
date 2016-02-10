@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

title Comandi
echo ### Comandi ###
:start
echo.
echo Scegli un comando:
echo 0 - Esci
echo 1 - Invia un file
echo 2 - Ricevi un file
echo 3 - Invia uno screenshot
echo 4 - Avvia una sessione di chat

echo 90 - Visualizza ip locale
echo 99 - Disinstalla miaomiao

set /P comando=-^> 

if %comando%==0  goto end
if %comando%==1  goto comando1
if %comando%==2  goto comando2
if %comando%==3  goto comando3
if %comando%==4  goto comando4
if %comando%==90 goto comando90
if %comando%==99 goto comando99
echo Opzione non valida.
:: aspetto 1 secondo
ping 1.1.1.1 -n 1 -w 1000 > nul
goto start

:comando1
call inviaC2.bat
goto end

:comando2
call riceviS.bat
goto end

:comando3
call screenshot.bat
goto end

:comando4
start chatServer.bat
goto end

:comando90
set ip_address_string="Indirizzo IPv4"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo Indirizzo ip:%%f
:: aspetto 1 secondo
ping 1.1.1.1 -n 1 -w 1000 > nul
goto start

:comando99
call disinstalla.bat
goto end

:end
::exit