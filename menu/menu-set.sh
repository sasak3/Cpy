#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
clear 
        # background validation
        green_background="\033[42;37m"
        red_background="\033[41;37m"
        # color text 
        yelow="\e[1;33m"
        NC="\033[0m"
        cyan="\e[1;36m"
        white="\e[1;37m"
        purple='\033[0;35m'
        green='\e[1;32m'

clear    
echo -e ""
echo -e "${purple} ┌──────────────────────────────────┐${NC}"
echo -e "${purple} │${cyan}  .::::.  SYSTEM SETING  .::::.  ${NC}"
echo -e "${purple} └──────────────────────────────────┘${NC}"
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[33m │ ${cyan}[•1]${NC} ${green}Update Autosctipt\033[0m"
echo -e "\e[33m │ ${cyan}[•2]${NC} ${green}Install bot admin tele\033[0m"
echo -e "\e[33m │ ${cyan}[•3]${NC} ${green}Seting bot admin tele\033[0m"
echo -e "\e[33m │ ${cyan}[•4]${NC} ${green}Backup data server\033[0m"
echo -e "\e[33m │ ${cyan}[•5]${NC} ${green}Chnge Domain server\033[0m"
echo -e "\e[33m │ ${cyan}[•6]${NC} ${green}Chnger port server\033[0m"
echo -e "\e[33m │ ${cyan}[•7]${NC} ${green}Chnge banner server\033[0m"
echo -e "\e[33m │ ${cyan}[•8]${NC} ${green}Restart all service\033[0m"
echo -e "\e[33m │ ${cyan}[•9]${NC} ${green}Bandwith information\033[0m"
echo -e "\e[33m │ ${cyan}[10]${NC} ${green}Chnge time reset\033[0m"
echo -e "\e[33m │ ${cyan}[11]${NC} ${green}Speedtest server\033[0m"
echo -e "\e[33m │ ${cyan}[12]${NC} ${green}Reboot server\033[0m"
echo -e "\e[33m │ ${cyan}[•0]${NC} ${green}Back To Menu\033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""
read -p " Select From Options [ 1 - 13 ] : "  opt
echo -e ""
case $opt in
1) clear ; rm -rf /root/updatefile.sh && wget https://raw.githubusercontent.com/heruahmad1/v4/main/updatefile.sh && chmod +x updatefile.sh && ./updatefile.sh ;;
2) clear ; wget https://raw.githubusercontent.com/heruahmad1/v4/main/install-bot.sh && chmod +x install-bot.sh && ./install-bot.sh ;;
3) clear ; bot ;;
4) clear ; menu-backup ;;
5) clear ; menu-domain ; exit ;;
6) clear ; port-change ; exit ;;
7) clear ; nano /etc/issue.net ; exit ;;  #ssh-vpn banner.conf
8) clear ; restarts ; exit ;;
9) clear ; bw ; exit ;;
10) clear ; auto-reboot ; exit ;;
11) clear ; speedtest ; exit ;;
12) clear ; reboot ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "salah pencet taiii" ; sleep 1 ; menu-set ;;
esac
