#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/trial.sh"
wget -O change "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/xp.sh"
wget -O limit-speed "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/limit-speed.sh"
wget -O add-sstp "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/add-sstp.sh"
wget -O add-ws "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/add-tr.sh"
wget -O ml2ppss-tp "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/ml2ppss-tp.sh"
wget -O mss-ssr "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/mss-ssr.sh"
wget -O mssh "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/mssh.sh"
wget -O mtrojan "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/mtrojan.sh"
wget -O mvless "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/mvless.sh"
wget -O mvmess "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/mvmess.sh"
wget -O mwg "https://raw.githubusercontent.com/XC0D3-X/ScriptBuruk/main/mwg.sh"
chmod +x change
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x limit-speed
chmod +x ml2ppss-tp
chmod +x mss-ssr
chmod +x mssh
chmod +x mtrojan
chmod +x mvless
chmod +x mvmess
chmod +x mwg
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs & Update"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
