#!/bin/bash

clear
lib=/opt/1commande/libs/interne/CreateurDB.sh

echo "Téléchargement et installation de NextCloud..."
cd /var/www/
curl -O https://download.nextcloud.com/server/releases/nextcloud-21.0.0.zip
unzip nextcloud-21.0.0.zip
mv nextcloud html
chown www-data:www-data /var/www/html/ -R
clear

echo "Veuiller indiquer un utilisateur pour la base de données"
read utilisateur
echo "Veuiller indiquer un nom pour la base de données"
read nom
echo "Veuiller indiquer un mot de passe pour la base de données"
read mdp

bash $lib $nom $utilisateur $mdp

mkdir /opt/1commande/temp
cd /opt/1commande/temp
echo $utilisateur >> utilisateur.txt
echo $nom >> nom.txt
echo $mdp >> mdp.txt