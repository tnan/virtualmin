cd ~
apt update
apt upgrade -y
yum makecache
yum update -y
wget https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
chmod +x mariadb_repo_setup
sudo ./mariadb_repo_setup
wget http://software.virtualmin.com/gpl/scripts/install.sh
printf 'y\nvirtualmin.the-entertainment.com\n' | /bin/sh install.sh
yum -y install clamav-data.noarch
systemctl enable --now clamd@scan
reboot
