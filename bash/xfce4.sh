#!/bin/bash
echo "[+] Installing XFCE4, this will take a while"
apt-get update
apt-get dist-upgrade -y --force-yes
apt-get --yes --force-yes install xfce4 xorg xrdp
echo "[+] Configuring XRDP to listen on port 3390 (but not starting the service)..."
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

# sudo /etc/init.d/xrdp start
# sudo /etc/init.d/xrdp stop
