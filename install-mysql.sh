echo "Installing MySQL"
yum install mariadb-server mariadb
systemctl enable mariadb
systemctl start mariadb
echo "Installing MySQL using as root password for mysql ABCD1234efgh!"
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
sleep 3
echo "To add a DB with an user with full access use this command: createmysql"
echo "In the example below, testdb is the name of the database"
echo "testuser is the user, and password is the user’s password."
echo " "
echo "createmysql testdb testuser password"
sleep 3