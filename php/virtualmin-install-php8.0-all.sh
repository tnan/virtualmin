cd /root/
add-apt-repository ppa:ondrej/php -y
apt update
apt upgrade -y
apt autoremove -y
wget https://raw.githubusercontent.com/tnan/virtualmin/master/php/preferences -O /etc/apt/preferences
apt install php8.0* -y
