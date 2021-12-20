#!/bin/bash

clear
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
clear
cd /usr/bin
echo "Enter your name for Menu Banner"
read -p "BANNER: " nama
echo "Banner=$nama" >> /usr/bin/banner.conf
