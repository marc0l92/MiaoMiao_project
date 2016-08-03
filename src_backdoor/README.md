# Backdoor

Simple backdoor written in .bat using NetCat.

This project uses some .bat file to hide to the victim and to the AntiMalware the installation and the execution of this simple socket that listen for incoming connection.
When a new connection is established (one per time) this server allows to the client to have a shell on the victim computer.

## Server
The server is installed on the virtual machine and listen for incoming connections. This part is composed by several files:
* *ChatServer.bat*: Starts a chat server;
* *CommandsMenu.bat*: Opens a menu that summarize all the function of this backdoor;
* *IPSchedule.bat*: Send the IP of the victim to a server using a GET request [TOFIX];
* *Main.bat*: Basic script that starts the MiaoMiao service (service start and periodic IP send);
* *MiaoMiao.bat*: Main script that allows to Install, Unistall and run the serice;
* *MyIP.bat*: Get the public IP;
* *ReceiveServer.bat*:
* *ReportIP.bat*: Send a report to the web interface that collect the information;
* *Screenshot.bat*: Create a screenshot of the current view and send it;
* *SendClient.bat*: Send a file;
* *SendIP.bat*: Send take the IP using "MyIP" and send it using "ReportIP"
* *Server.bat*: Opens a listening socket;

### Ports used

	55555 Remote control
	55554 Chat service
	55556 File exchange


## Client


## Server dist
