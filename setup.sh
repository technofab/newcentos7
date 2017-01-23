#!/bin/bash 
yum clean all; yum install wget -y
cd /root
wget https://raw.githubusercontent.com/technofab/newcentos7/master/installbase.sh 
chmod 755 installbase.sh
/root/installbase.sh