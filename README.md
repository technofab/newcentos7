# Installation Script for Basic CentOS 7 + Apache + PHP + VHOST + MYSQL + SSL Let’s Encrypt environment

After a fresh installation of CentOS 7, act as root and next do the following commands:

yum clean all; yum install wget -y

wget https://raw.githubusercontent.com/technofab/newcentos7/master/installbase.sh 

chmod 755 installbase.sh

./installbase.sh

For general managemento of this custom installation, please refer to general-management.md on this repository
