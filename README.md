# newcentos7
Installation Script for Basic CentOS 7 + Apache + PHP + VHOST + MYSQL + SSL Let’s Encrypt environment

After a fresh installation of CentOS 7, act as root and next do the following commands:
yum clean all; yum install wget -y
wget -O - https://raw.githubusercontent.com/technofab/newcentos7/master/installbase.sh | bash
