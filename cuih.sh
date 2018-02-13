#!/bin/bash

# HAX CUIH V 1.0
# Author: 4WSec - www.anoncyberteam.org
# Don't change copyright, dude XD


# Warna
blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'

# Ctrl + C
trap ctrl_c INT
ctrl_c() {
clear
echo -e $red"[*]> (Ctrl + C ) Detected, Trying To Exit ... "
sleep 1
echo ""
echo -e $yellow"[*]> Thank You For Using My Tools ... "
sleep 1
echo ""
echo -e $white"[*] Happy Hacking ... "
read enter
exit
}


echo -e $blue "

██╗  ██╗ █████╗ ██╗  ██╗     ██████╗██╗   ██╗██╗██╗  ██╗
██║  ██║██╔══██╗╚██╗██╔╝    ██╔════╝██║   ██║██║██║  ██║
███████║███████║ ╚███╔╝     ██║     ██║   ██║██║███████║
██╔══██║██╔══██║ ██╔██╗     ██║     ██║   ██║██║██╔══██║
██║  ██║██║  ██║██╔╝ ██╗    ╚██████╗╚██████╔╝██║██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝     ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═╝ "
echo ""
echo -e $yellow"[ WELCOME TO THE PENTEST ZONE ]"
echo ""
echo -e $yellow"This tools will running automated."
echo -e $yellow"Coded by 4WSec - Anon Cyber Team & Anak Bawang Cyber"
echo ""
echo "--=[ Don't use http/https"
echo "--=[ Ex: site.com"
echo ""
read -p "Input URL >> " fucked;
echo ""
echo ""


# CMSmap
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |C|M|S|M|A|P|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ "
echo ""
sleep 2
python CMSmap/cmsmap.py -t http://$fucked/
echo ""
echo -e $blue"
  +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |C|M|S|M|A|P| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# Black Widow
echo -e $blue"                 
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+ +-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |B|L|A|C|K| |W|I|D|O|W|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+ +-+-+-+-+-+ "

echo ""
sleep 2
./BlackWidow/blackwidow -u http://$fucked/
echo ""
echo -e $blue"
  +-+-+-+-+-+ +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |B|L|A|C|K| |W|I|D|O|W| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+ +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# Dirsearch
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |D|I|R|S|E|A|R|C|H|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+ "

echo ""
sleep 2
python3 dirsearch/dirsearch.py -u http://$fucked/ -e php
echo ""
echo -e $blue"
  +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |D|I|R|S|E|A|R|C|H| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# WPSeku
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |W|P|S|E|K|U|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ "

echo ""
sleep 2
python WPSeku/wpseku.py -t http://$fucked/
echo ""
echo -e $blue"
  +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |W|P|S|E|K|U| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# Infoga
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |I|N|F|O|G|A|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ "

echo ""
sleep 2
python Infoga/infoga.py --domain $fucked --source google -v 3
echo ""
echo -e $blue"
  +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |I|N|F|O|G|A| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# XSSTracer
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |X|S|S|T|R|A|C|E|R|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+ "

echo ""
sleep 2
python XSSTracer/xsstracer.py $fucked 80
echo ""
echo -e $blue"
  +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |X|S|S|T|R|A|C|E|R| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# WP-Hunter
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |W|P|-|H|U|N|T|E|R|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+-+-+-+ "

echo ""
sleep 2
perl WP-Hunter/wphunter.pl -u http://$fucked/
echo ""
echo -e $blue"
  +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |W|P|-|H|U|N|T|E|R| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "

echo ""
echo "========================================"

# Joomla Auto Exploit
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |J|O|O|M|L|A| |A|U|T|O| |E|X|P|L|O|I|T|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+-+-+ "

echo ""
read -p "Username: " user;
read -p "Password: " pass;
read -p "Email: " email;
sleep 2
python joomla.py $fucked $user $pass $email
echo ""
echo -e $blue"
  +-+-+-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
 |J|O|O|M|L|A| |A|U|T|O| |E|X|P|L|O|I|T| |F|I|N|I|S|H|E|D|
 +-+-+-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+ "

echo ""
echo "========================================"

# Email Collector
echo -e $blue"
  +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
 |T|E|S|T|I|N|G| |O|N| |E|M|A|I|L| |C|O|L|L|E|C|T|O|R|
 +-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ "

 echo ""
 sleep 2
 ./Email-Collector/email.sh http://$fucked/
 echo ""
 echo -e $blue"
  +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+
 |E|M|A|I|L| |C|O|L|L|E|C|T|O|R| |F|I|N|I|S|H|E|D|,| |D|U|D|E|
 +-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+ "
 echo ""
 echo "========================================"

 echo ""
 echo -e $cyan"
  ================================================
  TERIMA KASIH SUDAH MENGGUNAKAN TOOLS INI.
  HAPPY HACKING :D
 ================================================ "
