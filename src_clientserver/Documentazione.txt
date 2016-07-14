-FILE
	- SERVER
		+ AggiungereEccezioneFirewall.bat
			Aggiuge il programma nc.exe come programma cosentito all'accesso alla rete
		+ ChatServer.bat
			Avvia un servizio per la chat
		+ Disinstalla.bat
			Rimuove tutte le modifiche fatte da questo programma al pc
		+ EsecuzioneAutomatica.bat
			Aggiunge una chiave di registro per garantire l'esecuzione automatica del programma
		+ FileSize.bat
			Calcola la grandezza del file in ingresso
		+ Installa.bat
			Esegue le operazioni preliminari di inizializzazione del programma
		+ InviaC.bat
			Invia un file
		+ InviaIP.bat
			Invia l'IP prelevato da "MioIP" e lo trasmette come report tramite "ReportIP"
		+ IPSchedule.bat
			Esegue l'invio dell'ip ogni 30 minuti
		+ Main
			Versione base per l'attivazione del servizio MiaoMiao: Invio IP e avvio del servizio
		+ MiaoMiao.bat
			Interfaccia avanzata per il controllo del programma: main + installa + disinstalla
		+ MioIP.bat
			Preleva le informazioni sull'ip pubblico della connessione
		+ ReportIP.bat
			Invia un report all'interfaccia web di raccolta report
		+ Screenshot.bat
			Crea uno screenshot della scehermata corrente e lo invia
		+ Server.bat
			Esegue netcat
	- CLIENT

- PORTE
	55555 servizio controllo remoto
	55554 servizio chat
	55556 scambio file