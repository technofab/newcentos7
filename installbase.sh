#!/bin/bash 
echo "Installing base things..."
systemctl stop firewalld
systemctl disable firewalld
yum clean all
yum install http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm -y
yum install expect mosh screen yum-plugin-remove-with-leaves yum-plugin-show-leaves yum-utils mlocate nano iperf3 traceroute net-tools git zip unzip http://li.nux.ro/download/nux/dextop/el6/i386/screenie-1.30.0-5.el6.nux.noarch.rpm -y
yum clean all
yum update -y
echo "Installing MySQL"
yum install mariadb-server mariadb
systemctl enable mariadb
systemctl start mariadb
echo "Installing MySQL using as root password for mysql ABCD1234efgh!"
sleep 5
MYSQL_ROOT_PASSWORD=ABCD1234efgh!
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"$MYSQL\r\"
expect \"Change the root password?\"
send \"n\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"y\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof
")
echo "$SECURE_MYSQL"
sleep 5
echo "Installing Apache + PHP + MOD_SSL + XCache"
yum install httpd mod_ssl php php-gd php-pear php-xcache xcache-admin -y
mkdir /etc/httpd/sites-available
mkdir /etc/httpd/sites-enabled
systemctl start httpd
systemctl enable httpd
wget example.com.conf
yum install python-certbot-apache