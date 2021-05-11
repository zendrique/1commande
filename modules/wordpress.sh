#!/bin/bash

clear

echo "Téléchargement et installation de WordPress..."
cd /var/www/
curl -O https://fr.wordpress.org/latest-fr_FR.zip
unzip latest-fr_FR.zip
mv wordpress /var/www/
rm -r html
mv wordpress html
chown www-data:www-data /var/www/html/ -R
clear