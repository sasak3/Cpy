#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 

BURIQ () {
    curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
yelow="\e[1;33m"
white="\e[1;37m"
cyann="\e[1;36m"

green_background="\033[42;37m"
red_background="\033[41;37m"
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi
MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e ""
echo -e "\e[33m ┌┌┌┌────────────────────────────────────┐┐┐┐\033[0m"
echo -e "\e[33m ││││${cyann}      .::::.  SSH MENU  .::::.      "\e[33m││││\033[0m"
echo -e "\e[33m └└└└────────────────────────────────────┘┘┘┘\033[0m"
echo -e ""
echo -e "\e[33m    ┌────────────────────────────────────┐\033[0m"
echo -e "\e[33m    │ ${white}[•1]${NC}  ${cyann}Create ssh${NC}"
echo -e "\e[33m    │ ${white}[•2]${NC}  ${cyann}Create trial${NC}"
echo -e "\e[33m    │ ${white}[•3]${NC}  ${cyann}Renew ssh${NC}"
echo -e "\e[33m    │ ${white}[•4]${NC}  ${cyann}Delet ssh${NC}"
echo -e "\e[33m    │ ${white}[•5]${NC}  ${cyann}Cek user login${NC}"
echo -e "\e[33m    │ ${white}[•6]${NC}  ${cyann}List user${NC}"
echo -e "\e[33m    │ ${white}[•7]${NC}  ${cyann}Delet ssh expired${NC}"
echo -e "\e[33m    │ ${white}[•8]${NC}  ${cyann}Auto Kill ssh${NC}"
echo -e "\e[33m    │ ${white}[•9]${NC}  ${cyann}Cek multilogin ssh${NC}"
echo -e "\e[33m    │ ${white}[10]${NC}  ${cyann}user lock${NC}"
echo -e "\e[33m    │ ${white}[11]${NC}  ${cyann}user unlock${NC}"
echo -e "\e[33m    │ ${white}[•0]${NC}  ${cyann}Back To Menu${NC}"
echo -e "\e[33m    └────────────────────────────────────┘\033[0m"
echo -e ""
read -p " Select From Options [ 1 - 11 ] : "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; hapus ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
10) clear ; user-lock ; exit ;;
11) clear ; user-unlock ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
