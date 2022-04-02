#!/bin/bash

apt -y install lsb-release apt-transport-https ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
apt update
apt install -y php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline
a2enmod php7.4
systemctl restart apache2
a2dismod php7.4
apt install -y php7.4-fpm
a2enmod proxy_fcgi setenvif
a2enconf php7.4-fpm
systemctl restart apache2
exit