#!/bin/bash

#MySQL Pre-install
cd /root/
wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb -O mysql-apt-config.deb
DEBIAN_FRONTEND=noninteractive dpkg -i mysql-apt-config.deb
#MySQL Pre-install

#PHP Pre-install
cd /root/
add-apt-repository ppa:ondrej/php -y
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
printf 'y\nvirtualmin.aio.ws\n' | sudo /bin/sh install.sh
#Virtualmin Install

#PHP Install
wget https://raw.githubusercontent.com/tnan/virtualmin/master/php/preferences -O /etc/apt/preferences
apt install php7.4* -y
rm /etc/apt/preferences
#PHP Install

#PHP Ioncube
wget https://github.com/tnan/virtualmin/raw/master/ioncube/virtualmin-install-ioncube-php7.4-all.sh -O virtualmin-install-ioncube-php7.4-all.sh
chmod +x virtualmin-install-ioncube-php7.4-all.sh
bash virtualmin-install-ioncube-php7.4-all.sh 2>&1|tee virtualmin-install-ioncube-php7.4-all.log
#PHP Ioncube

#Systemd Config
sed -i 's/#DefaultTimeoutStartSec=90s/DefaultTimeoutStartSec=900s/g' /etc/systemd/system.conf
sed -i 's/#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=900s/g' /etc/systemd/system.conf
#Systemd Config

#Time Execution
exe_time="$(($SECONDS / 3600)) hrs $((($SECONDS / 60) % 60)) min $(($SECONDS % 60)) sec"
echo "Done! | Execution Date: $(date) | Execution Time: $exe_time"
#Time Execution

reboot
