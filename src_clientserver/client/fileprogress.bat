@echo off
title File Progress
set progressChar=#
set load=
set /a loadnum=0

echo ##### File progress #####
echo.
set /P dimension=Inserisci la dimensione totale del file: 
:Loading
	::stampa interfaccia
	cls
	echo.
	echo Trasferimento file in corso...
	echo  --------------------------------------------------
	echo ^|%load%
	echo  --------------------------------------------------
	echo %loadnum%/%dimension%
	::controllo ciclo
	if %loadnum% GEQ %dimension% goto Fine
	::settaggio nuove variabili
	set /a loadnum=%~z1
	
	set /a repeat=%loadnum% * 50 / %dimension%
	set /a indice=0
	set load=
	:ciclo1
		if %indice% GEQ %repeat% goto fineCiclo
		set load=%load%%progressChar%
		set /a indice=%indice% + 1
	goto ciclo1
	:fineCiclo
	
	ping localhost -n 2 >nul
goto Loading

:Fine
echo.
echo Trasferimento completato.

::pause > nul
ping 1.1.1.1 -n 1 -w 2000 > nul
exit