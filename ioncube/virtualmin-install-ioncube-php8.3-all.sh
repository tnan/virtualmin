cd /root/
wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip -O ioncube_loaders_lin_x86-64.zip
unzip ioncube_loaders_lin_x86-64.zip
wget https://raw.githubusercontent.com/tnan/virtualmin/master/ioncube/ioncube.ini -O /etc/php/8.3/mods-available/ioncube.ini
cp /root/ioncube/ioncube_loader_lin_8.3.so /usr/lib/php/20230831/ioncube.so
ln -s /etc/php/8.3/mods-available/ioncube.ini /etc/php/8.3/apache2/conf.d/00-ioncube.ini
ln -s /etc/php/8.3/mods-available/ioncube.ini /etc/php/8.3/cgi/conf.d/00-ioncube.ini
ln -s /etc/php/8.3/mods-available/ioncube.ini /etc/php/8.3/cli/conf.d/00-ioncube.ini
ln -s /etc/php/8.3/mods-available/ioncube.ini /etc/php/8.3/fpm/conf.d/00-ioncube.ini
ln -s /etc/php/8.3/mods-available/ioncube.ini /etc/php/8.3/phpdbg/conf.d/00-ioncube.ini
ln -s /etc/php/8.3/mods-available/ioncube.ini /etc/php/8.3/embed/conf.d/00-ioncube.ini
rm -rf /root/ioncube/
rm /root/ioncube_loaders_lin_x86-64.zip
systemctl restart apache2
systemctl restart php8.3-fpm
