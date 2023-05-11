#!/bin/bash
#installation nginx by using bash script.
#Owner=Anand
#update server
#install package name
#check status
#restart server

yum update -y
sudo yum install nginx -y
sudo systemctl status nginx
sudo systemctl start nginx
sudo systemctl enable nginx
