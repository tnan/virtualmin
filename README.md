cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4full-php8.0full.sh -O virtualmin-mysql8-php7.4full-php8.0full.sh && chmod +x virtualmin-mysql8-php7.4full-php8.0full.sh && bash virtualmin-mysql8-php7.4full-php8.0full.sh 2>&1|tee virtualmin-mysql8-php7.4full-php8.0full.log

cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4-php8.0.sh -O virtualmin-mysql8-php7.4-php8.0.sh && chmod +x virtualmin-mysql8-php7.4-php8.0.sh && bash virtualmin-mysql8-php7.4-php8.0.sh 2>&1|tee virtualmin-mysql8-php7.4-php8.0.log
