#!/bin/bash

#1.install ufw
sudo apt install ufw 

#2.allow shh
sudo ufw allow ssh

#3.deny http
sudo ufw deny http

#4.enable Firewall
sudo ufw enable

#5.checking firewall rules
sudo ufw status

