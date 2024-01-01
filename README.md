cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4full.sh -O virtualmin-mysql8-php7.4full.sh && chmod +x virtualmin-mysql8-php7.4full.sh && bash virtualmin-mysql8-php7.4full.sh 2>&1|tee virtualmin-mysql8-php7.4full.log

cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4full-php8.0full.sh -O virtualmin-mysql8-php7.4full-php8.0full.sh && chmod +x virtualmin-mysql8-php7.4full-php8.0full.sh && bash virtualmin-mysql8-php7.4full-php8.0full.sh 2>&1|tee virtualmin-mysql8-php7.4full-php8.0full.log

cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4-php8.0.sh -O virtualmin-mysql8-php7.4-php8.0.sh && chmod +x virtualmin-mysql8-php7.4-php8.0.sh && bash virtualmin-mysql8-php7.4-php8.0.sh 2>&1|tee virtualmin-mysql8-php7.4-php8.0.log

wget https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh && sh virtualmin-install.sh -v -f -n hostname
apt update && apt install linux-image-extra-virtual -y && wget https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh && sh virtualmin-install.sh -v -f -n hostname
