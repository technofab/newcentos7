#!/bin/bash 
echo "Installing base things, and ypdating the system to latest release..."
systemctl stop firewalld
systemctl disable firewalld
sleep 5
yum clean all
yum install screen https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
screen -m yum install tmux bind-utils findutils expect mosh yum-plugin-remove-with-leaves yum-plugin-show-leaves yum-utils mlocate nano iperf3 traceroute net-tools git zip unzip https://raw.githubusercontent.com/technofab/newcentos7/master/screenie-1.30.0-5.el6.nux.noarch.rpm -y
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
