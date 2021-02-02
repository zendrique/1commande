#!/bin/bash

apt install -y apache2 apache2-utils
chown www-data:www-data /var/www/html/ -R
exit