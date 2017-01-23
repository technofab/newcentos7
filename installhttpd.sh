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
clear
echo "Ending first phase. If you also MySQL do:"
echo "wget -O - https://raw.githubusercontent.com/technofab/newcentos7/master/installmysql.sh | bash"
echo "else refer to general-management.md on newcentos7 on technofab github repository."
sleep 5
