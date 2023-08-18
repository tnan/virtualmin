cd /root/
add-apt-repository ppa:ondrej/php -y
apt update
apt upgrade -y
apt autoremove -y
wget https://github.com/tnan/virtualmin/raw/master/php/preferences-php7.4 -O /etc/apt/preferences
apt install php7.4* -y
