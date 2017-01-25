#!/bin/bash 
cd /usr/bin
wget https://raw.githubusercontent.com/technofab/newcentos7/master/createdb
chmod 755 createdb
cd ~
echo "Installing MySQL"
yum install mariadb-server mariadb -y
systemctl enable mariadb
systemctl start mariadb
echo "Installing MySQL using as {RED}root password{NC} for mysql --> {RED}ab1234CD{NC}"
MYSQL_ROOT_PASSWORD=ab1234CD
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"$MYSQL\r\"
expect \"Change the root password?\"
send \"y\r\"
expect \"New password:\"
send \"$MYSQL_ROOT_PASSWORD\r\"
expect \"Re-enter new password:\"
send \"$MYSQL_ROOT_PASSWORD\r\"
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
sleep 3
echo "To add a DB with an user with full access use this command: createdb"
echo "In the example below, testdb is the name of the database"
echo "testuser is the user, and password is the user’s password."
echo " "
echo "createdb testdb testuser password"
sleep 15
