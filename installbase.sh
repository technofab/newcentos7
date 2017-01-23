#!/bin/bash 
echo "Installing base things..."
systemctl stop firewalld
systemctl disable firewalld
sleep 3
yum clean all
yum install screen http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm -y
screen -m yum install expect mosh yum-plugin-remove-with-leaves yum-plugin-show-leaves yum-utils mlocate nano iperf3 traceroute net-tools git zip unzip http://li.nux.ro/download/nux/dextop/el6/i386/screenie-1.30.0-5.el6.nux.noarch.rpm -y
yum clean all
echo "Updating the system to latest release"
sleep 3
screen -m yum update -y
echo "Installing Apache + PHP + MOD_SSL + XCache"
sleep 3
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
sleep 3