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
clear    
echo -e ""
echo -e "\e[33m ┌┌┌┌────────────────────────────────────┐┐┐┐\033[0m"
echo -e "\e[33m ││││${cyann}   .::::.  SYSTEM SETING  .::::.   \e[33m││││\033[0m"
echo -e "\e[33m └└└└────────────────────────────────────┘┘┘┘\033[0m"
echo -e ""
echo -e "\e[33m    ┌────────────────────────────────────┐\033[0m"
echo -e "\e[33m    │ ${white}[•1]${NC} ${cyan}Update menu\033[0m"
echo -e "\e[33m    │ ${white}[•2]${NC} ${cyan}Install bot vps\033[0m"
echo -e "\e[33m    │ ${white}[•3]${NC} ${cyan}ganti Domain vps\033[0m"
echo -e "\e[33m    │ ${white}[•4]${NC} ${cyan}ganti Port\033[0m"
echo -e "\e[33m    │ ${white}[•5]${NC} ${cyan}ganti banner\033[0m"
echo -e "\e[33m    │ ${white}[•6]${NC} ${cyan}Restart service\033[0m"
echo -e "\e[33m    │ ${white}[•7]${NC} ${cyan}Cek bandwith\033[0m"
echo -e "\e[33m    │ ${white}[•8]${NC} ${cyan}Atur waktu riset\033[0m"
echo -e "\e[33m    │ ${white}[•9]${NC} ${cyan}Speedtest vps\033[0m"
echo -e "\e[33m    │ ${white}[10]${NC} ${cyan}Webmin menu\033[0m"
echo -e "\e[33m    │ ${white}[11]${NC} ${cyan}Tentang Script\033[0m"
echo -e "\e[33m    │ ${white}[•0]${NC} ${cyan}Back To Menu\033[0m"
echo -e "\e[33m    └────────────────────────────────────┘\033[0m"
echo -e ""
echo -e "${yellow}"
read -p " Select From Options [1-11] : "  opt
echo -e ""
case $opt in
1) clear ; rm -rf /root/updatefile.sh && wget https://raw.githubusercontent.com/heruahmad1/v4/main/updatefile.sh && chmod +x updatefile.sh && ./updatefile.sh ;;
2) clear ; wget https://raw.githubusercontent.com/heruahmad1/v4/main/install-bot.sh && chmod +x install-bot.sh && ./install-bot.sh ;;
3) clear ; menu-domain ; exit ;;
4) clear ; port-change ; exit ;;
5) clear ; nano /etc/issue.net ; exit ;;  #ssh-vpn banner.conf
5) clear ; restarts ; exit ;;
7) clear ; bw ; exit ;;
8) clear ; auto-reboot ; exit ;;
9) clear ; speedtest ; exit ;;
10) clear ; menu-webmin ; exit ;; 
11) clear ; about ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "salah pencet taiii" ; sleep 1 ; menu-set ;;
esac
