::Esegue netcat

@echo off
title Server CMD
echo Avvio il server...

:: -l modalità connessioni in ingresso
:: -p porta su cui attendere connessioni
:: -e programma su cui fare la connessione
:: -L se la connessione viene chiusa riavvia la connessione
:: -d modalità background
start nc -l -p 55557 -e cmd.exe -L