# MiaoMiao_project

This repository consist in several experiment made using NetCat on Windows.

## Backdoor

Simple backdoor written in .bat using NetCat.

This project uses some .bat file to hide to the victim and to the AntiMalware the installation and the execution of this simple socket that listen for incoming connection.
When a new connection is established (one per time) this server allows to the client to have a shell on the victim computer.

[Project details](./src_clientserver/README.md)

## Botnet

Simple script to create a bootnet.
This project is divided in two parts:
* CNC (Command and Control server): server page that allows the attacker to load new commands and the victim to download them.
* Zombie: script that runs on the victim machine. It download and execute the command retrieved from the CNC server.

[Project details](./src_bootnet/README.md)

## Other uses

Other uses of NetCat:
* Chat: one to one chat between a server and a client;
* Send mail: connect to a web server and use the SMTP protocol to send a mail;
* Port scanner: scan a range of port of a IP address;
* HTTP server: provide a html web page when a browser ask for it on a port;
* Port forward: forward all the data sent to localhost port to a remote host port;
