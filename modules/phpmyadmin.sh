#!/bin/bash

cd -R /var/www/html/
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
mv phpMyAdmin-*.zip phpmyadmin
unzip phpmyadmin.zip
rm phpmyadmin.zip
mv phpmyadmin-* phpmyadmin
chown www-data:www-data /var/www/html/ -R
apt install php7.4-xml
systemctl restart apache2
exit