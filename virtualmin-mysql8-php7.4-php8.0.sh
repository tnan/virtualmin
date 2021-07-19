#!/bin/bash

#MySQL Pre-install
cd /root/
wget https://dev.mysql.com/get/mysql-apt-config_0.8.17-1_all.deb
DEBIAN_FRONTEND=noninteractive dpkg -i mysql-apt-config_0.8.17-1_all.deb
#MySQL Pre-install

#PHP Pre-install
cd /root/
add-apt-repository ppa:ondrej/php -y
apt update
#PHP Pre-install

#Update/Upgrade
cd /root/
apt update
apt upgrade -y
apt autoremove -y
#Update/Upgrade

#Virtualmin Install
cd /root/
wget http://software.virtualmin.com/gpl/scripts/install.sh
printf 'y\nvirtualmin.virtualmin.virtualmin\n' | sudo /bin/sh install.sh
#Virtualmin Install

#PHP Install
apt install php7.4-{cli,curl,pdo,fpm,zip,gd,xml,mysql,cgi} php8.0-{cli,curl,pdo,fpm,zip,gd,xml,mysql,cgi} -y
#PHP Install

#Systemd Config
sed -i 's/#DefaultTimeoutStartSec=90s/DefaultTimeoutStartSec=900s/g' /etc/systemd/system.conf
sed -i 's/#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=900s/g' /etc/systemd/system.conf
#Systemd Config

#Time Execution
exe_time="$(($SECONDS / 3600)) hrs $((($SECONDS / 60) % 60)) min $(($SECONDS % 60)) sec"
echo "Done! | Execution Date: $(date) | Execution Time: $exe_time"
#Time Execution

reboot
