#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[1;35m'
Green="\033[1;32m"
Red="\033[31m"
WhiteB="\e[5;37m"
BlueCyan="\e[5;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
cyan="\e[1;36m"
Suffix="\033[0m"
green_background="\033[42;37m"
red_background="\033[41;37m"

echo -e "${purple} ┌───────────────────────────────┐${NC}"
echo -e "${purple} │${blue} .::::.  MENU BACKUP   .::::.  ${NC}"
echo -e "${purple} └───────────────────────────────┘${NC}"
echo
echo -e "${yellow} ┌───────────────────────────────┐${NC}"
echo "     [1]. Backup"
echo "     [2]. Restore"
echo "     [3]. strt"
echo "     [4]. limit speed"
echo "     [5]. auto backup"
echo -e "${yellow} └───────────────────────────────┘${NC}"
echo
echo -e "${cyan}"
read -p    "( 1 - 5 )  " bro

if [ $bro = 1 ] || [ $bro = 1 ]
then
figlet "backup"
backup
echo "${yellow} ┌───────────────────────────────────────────────┐"
echo
echo "${blue}   Terimakasih sudah menggunakan layanan Premium SKY-TUNNEL"
echo
echo "${yellow} └───────────────────────────────────────────────┘"
fi

if [ $bro = 2 ] || [ $bro = 2 ]
then
figlet "Restore" | lolcat
restore
echo "${yellow} ┌───────────────────────────────────────────────┐"
echo
echo "${blue}   Terimakasih sudah menggunakan layanan Premium SKY-TUNNEL"
echo
echo "${yellow} └───────────────────────────────────────────────┘"
fi
if [ $bro = 3 ] || [ $bro = 3 ]
then
figlet "strt"
strt
echo "${yellow} ┌───────────────────────────────────────────────┐"
echo
echo "${blue}   Terimakasih sudah menggunakan layanan Premium SKY-TUNNEL"
echo
echo "${yellow} └───────────────────────────────────────────────┘"
fi
if [ $bro = 4 ] || [ $bro = 4 ]
then
limitspeed
echo "${yellow} ┌───────────────────────────────────────────────┐"
echo
echo "${blue}   Terimakasih sudah menggunakan layanan Premium SKY-TUNNEL"
echo
echo "${yellow} └───────────────────────────────────────────────┘"
fi

if [ $bro = 5 ] || [ $bro = 5 ]
then
autobackup
echo "${yellow} ┌───────────────────────────────────────────────┐"
echo
echo "${blue}   Terimakasih sudah menggunakan layanan Premium SKY-TUNNEL"
echo
echo "${yellow} └───────────────────────────────────────────────┘"
fi
