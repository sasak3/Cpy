#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
# hapus menu
rm -rf menu
rm -rf menu-trial
rm -rf menu-vmess
rm -rf menu-vlesss
rm -rf running
rm -rf clearcache
rm -rf menu-trgo
rm -rf menu-trojan
rm -rf menu-sshh
rm -rf menu-ssh
rm -rf menu-sshh
rm -rf usernew
rm -rf trial
rm -rf renew
rm -rf hapus
rm -rf cek
rm -rf member
rm -rf delete
rm -rf autokill
rm -rf ceklim
rm -rf autokilll
rm -rf tendang
rm -rf menu-set
rm -rf menu-domain
rm -rf add-host
rm -rf port-change
rm -rf certv2ray
rm -rf menu-webmin
rm -rf speedtest
rm -rf about
rm -rf auto-reboot
rm -rf restart
rm -rf bw
rm -rf port-ssl
rm -rf port-ovpn
rm -rf xp
rm -rf acs-set
rm -rf sshws
rm -rf status
rm -rf menu-backup
rm -rf backup
rm -rf restore
rm -rf jam
rm -rf up
#rm -rf bot

# download script
cd /usr/bin
# vmess
wget -O add-ws "https://raw.githubusercontent.com/sasak3/v4/main/xray/add-ws.sh" && chmod +x add-ws
wget -O trialvmess "https://raw.githubusercontent.com/sasak3/v4/main/xray/trialvmess.sh" && chmod +x trialvmess
wget -O renew-ws "https://raw.githubusercontent.com/sasak3/v4/main/xray/renew-ws.sh" && chmod +x renew-ws
wget -O del-ws "https://raw.githubusercontent.com/sasak3/v4/main/xray/del-ws.sh" && chmod +x del-ws
wget -O cek-ws "https://raw.githubusercontent.com/sasak3/v4/main/xray/cek-ws.sh" && chmod +x cek-ws

# vless
wget -O add-vless "https://raw.githubusercontent.com/sasak3/v4/main/xray/add-vless.sh" && chmod +x add-vless
wget -O trialvless "https://raw.githubusercontent.com/sasak3/v4/main/xray/trialvless.sh" && chmod +x trialvless
wget -O renew-vless "https://raw.githubusercontent.com/sasak3/v4/main/xray/renew-vless.sh" && chmod +x renew-vless
wget -O del-vless "https://raw.githubusercontent.com/sasak3/v4/main/xray/del-vless.sh" && chmod +x del-vless
wget -O cek-vless "https://raw.githubusercontent.com/sasak3/v4/main/xray/cek-vless.sh" && chmod +x cek-vless

# trojan
wget -O add-tr "https://raw.githubusercontent.com/sasak3/v4/main/xray/add-tr.sh" && chmod +x add-tr
wget -O trialtrojan "https://raw.githubusercontent.com/sasak3/v4/main/xray/trialtrojan.sh" && chmod +x trialtrojan
wget -O del-tr "https://raw.githubusercontent.com/sasak3/v4/main/xray/del-tr.sh" && chmod +x del-tr
wget -O renew-tr "https://raw.githubusercontent.com/sasak3/v4/main/xray/renew-tr.sh" && chmod +x renew-tr
wget -O cek-tr "https://raw.githubusercontent.com/sasak3/v4/main/xray/cek-tr.sh" && chmod +x cek-tr

# trojan go
wget -O addtrgo "https://raw.githubusercontent.com/sasak3/v4/main/xray/addtrgo.sh" && chmod +x addtrgo
wget -O trialtrojango "https://raw.githubusercontent.com/sasak3/v4/main/xray/trialtrojango.sh" && chmod +x trialtrojango
wget -O deltrgo "https://raw.githubusercontent.com/sasak3/v4/main/xray/deltrgo.sh" && chmod +x deltrgo
wget -O renewtrgo "https://raw.githubusercontent.com/sasak3/v4/main/xray/renewtrgo.sh" && chmod +x renewtrgo
wget -O cektrgo "https://raw.githubusercontent.com/sasak3/v4/main/xray/cektrgo.sh" && chmod +x cektrgo

# menu
wget -O menu "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu.sh"
wget -O menu-trial "https://raw.githubusercontent.com/Fikripps/Ver3/main/menu/menu-trial.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-vmess.sh"
wget https://raw.githubusercontent.com/sasak3/v4/main/menu-vless && chmod +x menu-vless
wget -O running "https://raw.githubusercontent.com/sasak3/v4/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/sasak3/v4/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-trgo.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-trojan.sh"

# menu ssh ovpn
wget -O menu-sshh "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-sshh.sh"
wget -O usernew "https://raw.githubusercontent.com/sasak3/v4/main/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/sasak3/v4/main/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/sasak3/v4/main/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/sasak3/v4/main/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/sasak3/v4/main/ssh/cek.sh"
wget -O member "https://raw.githubusercontent.com/sasak3/v4/main/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/sasak3/v4/main/ssh/delete.sh"
wget -O autokilll "https://raw.githubusercontent.com/sasak3/v4/main/ssh/autokilll.sh"
wget -O ceklim "https://raw.githubusercontent.com/sasak3/v4/main/ssh/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/sasak3/v4/main/ssh/tendang.sh"

# menu system
wget -O menu-set "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-set.sh"
wget -O menu-domain "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/sasak3/v4/main/ssh/add-host.sh"
wget -O port-change "https://raw.githubusercontent.com/sasak3/v4/main/port/port-change.sh"
wget -O certv2ray "https://raw.githubusercontent.com/sasak3/v4/main/xray/certv2ray.sh"
wget -O menu-webmin "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu-webmin.sh"
wget -O speedtest "https://raw.githubusercontent.com/sasak3/v4/main/ssh/speedtest_cli.py"
wget -O auto-reboot "https://raw.githubusercontent.com/sasak3/v4/main/menu/auto-reboot.sh"
wget -O restarts "https://raw.githubusercontent.com/sasak3/v4/main/menu/restarts.sh"
wget -O bw "https://raw.githubusercontent.com/sasak3/v4/main/menu/bw.sh"

wget -O sshws "https://raw.githubusercontent.com/sasak3/v4/main/ssh/sshws.sh"
wget -O status "https://raw.githubusercontent.com/sasak3/v4/main/status.sh"
wget https://raw.githubusercontent.com/sasak3/v4/main/backup/set-br.sh &&  chmod +x set-br.sh && ./set-br.sh
wget -O /usr/bin/menu "https://raw.githubusercontent.com/sasak3/v4/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -O /usr/bin/backup "https://raw.githubusercontent.com/sasak3/v4/main/backup/backup.sh" && chmod +x /usr/bin/backup
wget -O /usr/bin/restore "https://raw.githubusercontent.com/sasak3/v4/main/backup/restore.sh" && chmod +x /usr/bin/restore
clear

chmod +x menu
chmod +x menu-trial
chmod +x menu-vmess
#get https://raw.githubusercontent.com/sasak3/v4/main/menu-vless && chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan

chmod +x menu-sshh
chmod +x usernew
chmod +x trial
chmod +x renew
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokilll
chmod +x ceklim
chmod +x tendang

chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restarts
chmod +x bw

chmod +x port-ssl
chmod +x port-ovpn

chmod +x xp
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-bckp
chmod +x backup
chmod +x restore
chmod +x jam
echo -e " [INFO] Update Successfully"
sleep 2
exit
