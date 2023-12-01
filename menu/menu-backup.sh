#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/ssnvpn/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="\033[1;36m"
COLBG1="\e[1;97;101m"                 
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${COLBG1}            • MENU BACKUP •             ${NC} "
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;93m〔⎆〕 ${grenbo}1.${NC} \033[0;36mBackup VPS${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}2.${NC} \033[0;36mRestore VPS${NC}"
echo -e "\033[1;93m〔⎆〕 ${grenbo}0.${NC} \033[0;36mMenu${NC}"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu :  "  opt
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
