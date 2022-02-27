#!/bin/bash
cd /root/

#PHP Install
wget https://github.com/tnan/virtualmin/raw/master/ubuntu20/%5Cetc%5Capt%5Cpreferences -O /etc/apt/preferences
apt install php7.4* -y
rm /etc/apt/preferences
#PHP Install

#PHP Ioncube
cd /root/
wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip -O ioncube_loaders_lin_x86-64.zip
unzip ioncube_loaders_lin_x86-64.zip
wget https://raw.githubusercontent.com/tnan/virtualmin/master/ioncube/ioncube.ini -O /etc/php/7.4/mods-available/ioncube.ini
cp /root/ioncube/ioncube_loader_lin_7.4.so /usr/lib/php/20190902/ioncube.so
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/apache2/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/cgi/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/cli/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/fpm/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/phpdbg/conf.d/00-ioncube.ini
rm -rf /root/ioncube/
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
