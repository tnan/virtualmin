wget https://raw.githubusercontent.com/tnan/virtualmin/master/php/preferences-php8.1 -O /etc/apt/preferences
apt install php8.1-* -y

wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip -O /root/ioncube_loaders_lin_x86-64.zip
unzip ioncube_loaders_lin_x86-64.zip
wget https://raw.githubusercontent.com/tnan/virtualmin/master/ioncube/ioncube.ini -O /etc/php/8.1/mods-available/ioncube.ini
cp /root/ioncube/ioncube_loader_lin_8.1.so /usr/lib/php/20210902/ioncube.so
ln -s /etc/php/8.1/mods-available/ioncube.ini /etc/php/8.1/cli/conf.d/00-ioncube.ini
ln -s /etc/php/8.1/mods-available/ioncube.ini /etc/php/8.1/cgi/conf.d/00-ioncube.ini
ln -s /etc/php/8.1/mods-available/ioncube.ini /etc/php/8.1/fpm/conf.d/00-ioncube.ini
ln -s /etc/php/8.1/mods-available/ioncube.ini /etc/php/8.1/phpdbg/conf.d/00-ioncube.ini
ln -s /etc/php/8.1/mods-available/ioncube.ini /etc/php/8.1/apache2/conf.d/00-ioncube.ini

rm -rf /root/ioncube/
rm /root/ioncube_loaders_lin_x86-64.zip

systemctl restart apache2
systemctl restart php8.1-fpm
