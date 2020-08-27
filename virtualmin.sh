cd /root
apt update
apt upgrade -y
yum makecache
yum update -y
yum install screen -y
apt install screen -y
wget http://software.virtualmin.com/gpl/scripts/install.sh
printf 'y\nvirtualmin.the-entertainment.com\n' | /bin/sh install.sh
reboot
