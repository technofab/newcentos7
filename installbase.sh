#!/bin/bash 
echo "Installing base things, and ypdating the system to latest release..."
systemctl stop firewalld
systemctl disable firewalld
sleep 5
yum clean all
yum install screen http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm -y
screen -m yum install bind-utils find utils expect mosh yum-plugin-remove-with-leaves yum-plugin-show-leaves yum-utils mlocate nano iperf3 traceroute net-tools git zip unzip http://li.nux.ro/download/nux/dextop/el6/i386/screenie-1.30.0-5.el6.nux.noarch.rpm -y
yum clean all
sleep 5
screen -m yum update -y
echo "Ending first phase."
echo "If you need Apache httpd do:"
echo "wget https://raw.githubusercontent.com/technofab/newcentos7/master/installhttpd.sh
echo "chmod 755 installhttpd.sh"
echo "./installhttpd.sh"
echo " "
echo "If you need MySQL Database do:"
echo "wget https://raw.githubusercontent.com/technofab/newcentos7/master/installmysql.sh
echo "chmod 755 installmysql.sh"
echo "./installmysql.sh"
sleep 5
