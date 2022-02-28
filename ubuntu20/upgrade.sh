#!/bin/bash
cd /root/

apt update 2>&1|tee /root/update.log
apt upgrade -y 2>&1|tee /root/upgrade.log
apt install -f -y
apt autoremove -y
apt autoclean -y

wget https://github.com/tnan/virtualmin/raw/master/ubuntu20/%5Cetc%5Crc.local_release-upgrade -O /etc/rc.local
chmod +x /etc/rc.local
systemctl enable rc-local

reboot
