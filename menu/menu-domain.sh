#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip)
NC="\033[0m"
wh="\e[1;37m" # PUTIH
cy="\e[1;36m" # CYAN
ye="\e[1;33m" # KUNING
clear 
echo -e "${ye} ┌───────────────────────────────┐${NC}"
echo -e "${ye} │${NC}   .::::.  MENU DOMAIN  .::::.  ${NC}"
echo -e "${ye} └───────────────────────────────┘${NC}"
echo -e ""
echo -e "${ye} ┌───────────────────────────────┐${NC}"
echo -e "${ye} │${NC} [•1]${NC} 𝗚𝗮𝗻𝘁𝗶 𝗗𝗼𝗺𝗮𝗶𝗻 ${Nc}"
echo -e "${ye} │${NC} [•2]${NC} 𝗥𝗲𝗻𝗲𝘄 𝗰𝗲𝗿𝘁 𝗱𝗼𝗺𝗮𝗶𝗻 ${Nc}"
echo -e "${ye} │${NC} [•0]${NC} Back to menu ${Nc}"
echo -e "${ye} └───────────────────────────────┘${NC}"
echo -e ""
read -p "  Select From Options [1-2] : " opt
echo -e ""
case $opt in
1) clear ; add-host ;;
2) clear ; certv2ray ;;
0) clear ; menu ;;
x) exit ;;
*) echo "salah pencet" ; sleep 1 ; menu-domain ;;
esac
