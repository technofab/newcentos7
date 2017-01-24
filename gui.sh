# !/bin/bash

# Changelog
# Versione 0.1a - 24/01/2017
# Initial Release - Basic functions

#############################################################

# Variabili iniziali
versione="0.1b"
data="24/01/2017"
titolo="newcentos7 $versione"
sottotitolo="newcentos7 version $versione of $data"

# ************ Core routine **************

echo "Loading....."
yum install dialog -y -q

pausa(){
   read -p "$*"
}

uscita()
{
	dialog --clear --backtitle "$sottotitolo" --msgbox "Exiting from the program!" 6 45
	rm tmpscelta
	clear
	exit
}

scelta_operazione(){
dialog --clear --backtitle "$sottotitolo" --menu \
  "Fai la tua scelta per cortesia:" 0 0 0 \
I "Install basic functions" \
A "Install Apache httpd" \
M "Install MySQL database" 2>tmpscelta

if [ "$?" = "0" ]
then
	_return=$(cat tmpscelta)
	if [ "$_return" = "I" ]
        then
		basicfunctions
        fi
	if [ "$_return" = "A" ]
        then
		apachehttpd
        fi
	if [ "$_return" = "M" ]
        then
		mysqldatabase
        fi
else
	uscita
fi
}

installa_wget()
{
dialog --title "$titolo" --backtitle "$sottotitolo" --yesno "Install wget package?" 5 35
case $? in
0)
echo "Installing wget package"
yum install dialog -y -q
;;
1)
echo "wget package is a requisite for working this script"
uscita
;;
esac
# uscita
}

basicfunctions()
{
# Routine loading basic functions
echo routine basic
yum clean all; yum install wget -y
cd /root
wget https://raw.githubusercontent.com/technofab/newcentos7/master/installbase.sh 
chmod 755 installbase.sh
/root/installbase.sh
exit
}

apachehttpd()
{
# Routine loading and install Apache httpd
echo routine httpd
exit
}

mysqldatabase()
{
# Routine loading and install MySQL
echo routine mysql
exit
}

# ************ Core routine **************

# Inizio script
dialog --title "$titolo" --backtitle "$sottotitolo" --msgbox "Welcome to $titolo" 5 33

# Verifying if the user is root and wget is installed

if [ $UID != 0 ]
    then
        dialog --clear --backtitle "$sottotitolo" --msgbox  "This script must be ran as root user." 6 70
        exit 1
fi

if which wget >/dev/null; then
        dialog --clear --backtitle "$sottotitolo" --msgbox "OK wget package is installed!" 5 60
	scelta_operazione
else
        dialog --clear --backtitle "$sottotitolo" --msgbox "KO wget package is missing!" 5 60
        installa_wget
fi