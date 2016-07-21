@echo off
title File Progress
set progressChar=#
set load=
set /a loadnum=0

echo ##### File progress #####
echo.
set /P dimension=Insert the total size of the file:
:Loading
	::print main interface
	cls
	echo.
	echo Transfering...
	echo  --------------------------------------------------
	echo ^|%load%
	echo  --------------------------------------------------
	echo %loadnum%/%dimension%
	::loop check
	if %loadnum% GEQ %dimension% goto Fine

	set /a loadnum=%~z1

	set /a repeat=%loadnum% * 50 / %dimension%
	set /a index=0
	set load=
	:loop1
		if %index% GEQ %repeat% goto endLoop
		set load=%load%%progressChar%
		set /a index=%index% + 1
	goto loop1
	:endLoop

	ping localhost -n 2 >nul
goto Loading

:Fine
echo.
echo Transfer complete.

::pause > nul
ping 1.1.1.1 -n 1 -w 2000 > nul
exit
