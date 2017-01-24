# What is newcentos7 repo

newcentos7 repo is actually a bunch of installation Script.
They are made for setup from a basic CentOS 7.x and install Apache + PHP + VHOST + MYSQL + SSL Let’s Encrypt environment.

After a fresh installation of CentOS 7, act as root and next do the following commands:

yum clean all; yum install wget -y -q

wget https://raw.githubusercontent.com/technofab/newcentos7/master/gui.sh 

chmod 755 gui.sh; ./gui.sh

For general managemento of this custom installation, please refer to general-management.md on this repository.