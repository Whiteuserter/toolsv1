#!/bin/bash


b="\033[1m"
u="\033[4m"
bl="\033[30m"
r="\033[31m"
g="\033[32m"
bu="\033[34m"
m="\033[35m"
c="\033[36m"
w="\033[37m"
endc="\033[0m"
enda="\033[0m"
blue="\033[1;34m"
cyan="\033[1;36m"
red="\033[1;31m"

figlet *Ananda* |lolcat

echo  "+===========================================+" |lolcat
figlet Tools Installer |lolcat
echo  "+===========================================+" |lolcat

echo $r"•••••••••••••••••••••••••••••••••••••••••••••${endc}";
echo   "##### Kumpulan Tools Terbaru 2018-2019! #####" |lolcat
echo $r"•••••••••••••••••••••••••••••••••••••••••••••${endc}";

trap ctrl_c INT
ctrl_c() {
clear
echo  $red"[#]> (Ctrl + C ) Detected,
Trying To Exit ... "
echo  $cyan"[#]> Subscribe chanel MaulanaRyM"
sleep 1
echo ""
echo  $white"[#]> semoga bermanfaat :)"
sleep 1
exit
}

lagi=1
while [ $lagi -lt 6 ];
do
echo ""
echo  "=========================================" |lolcat
echo  $r "1.  Naik Kereta Api                    ÷${endc}";
echo  "=========================================" |lolcat
echo  $g "2.  Profil Guard Facebook              ÷${endc}";
echo  "=========================================" |lolcat
echo  $c "3.  Clone Yahoo                        ÷${endc}";
echo  "=========================================" |lolcat
echo  $r "4.  Hack Facebook1.0                 ÷${endc}";
echo  "=========================================" |lolcat
echo  $c "50. Install  All bahan               ÷${endc}";
echo  "=========================================" |lolcat
echo  $r "00. Exit                               ÷${endc}";
echo  "=========================================" |lolcat
echo ""
echo  "╭─Ananda" |lolcat
read -p "╰─#" pil;

#Kereta

case $pil in
1) apt update
pkg install sl
sl

;;

#PP Guard Facebook

2) apt update
pkg install git
pkg install php
git clone https://github.com/Al2VyN/FB-Guard.git
mv FB-Guard.git $HOME
cd $HOME/FB-Guard
chmod +x FB-Guard
php guard.php


;;

#YahooCloning

3) apt update
pkg install git
pkg install python2
pip install request
git clone https://github.com/wahyuandhika/YahooCloning
mv YahooCloning $HOME
cd $HOME/YahooCloning
chmod +x cloning.py
python2 cloning.py

;;

#BotKntd

4) apt update
pkg install git
pip install requests
git clone https://github.com/Whiteuserter/BotKntd
cd BotKntd
python2 BotKntd.py

;;


#Upgrade Versi

50) pkg install ruby
gem install lolcat
pkg install figlet

;;

00) echo "created by : <==Ananda==>" |lolcat
exit

;;

*) echo "WARNING!!!,
pilihan yang anda cari tidak terdeteksi,Coba yang lain!"
esac
done
done