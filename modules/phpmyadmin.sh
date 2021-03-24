#!/bin/bash

nom="phpMyAdmin-5.0.4-all-languages.zip"

cd -R /var/www/html/
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
unzip $nom
rm $nom
mv phpMyAdmin-5.0.4-all-languages phpmyadmin
chown www-data:www-data /var/www/html/ -R
apt install -y php7.4-xml
systemctl restart apache2
exit