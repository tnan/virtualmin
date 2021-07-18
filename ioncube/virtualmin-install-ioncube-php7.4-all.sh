cd /root/
wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip -O ioncube_loaders_lin_x86-64.zip
unzip ioncube_loaders_lin_x86-64.zip
wget https://raw.githubusercontent.com/tnan/virtualmin/master/ioncube/ioncube.ini -O /etc/php/7.4/mods-available/ioncube.ini
cp /root/ioncube/ioncube_loader_lin_7.4.so /usr/lib/php/20190902/ioncube.so
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/cli/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/cgi/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/fpm/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/phpdbg/conf.d/00-ioncube.ini
ln -s /etc/php/7.4/mods-available/ioncube.ini /etc/php/7.4/apache2/conf.d/00-ioncube.ini
rm -rf /root/ioncube/
systemctl restart apache2
systemctl restart php7.4-fpm
