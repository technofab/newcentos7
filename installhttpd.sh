#!/bin/bash
echo "Installing Apache + PHP + MOD_SSL + XCache"
sleep 5
screen -m yum install httpd mod_ssl php php-gd php-pear php-xcache xcache-admin -y
mkdir /etc/httpd/sites-available
mkdir /etc/httpd/sites-enabled
systemctl start httpd
systemctl enable httpd
cd /etc/httpd/sites-available
wget https://raw.githubusercontent.com/technofab/newcentos7/master/example.com.conf
screen yum install python-certbot-apache -y
sleep 5
