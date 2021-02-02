#!/bin/bash

source=/opt/adminadmin

echo "Note :"
echo "Vous êtes sur le poin de mettre en place un serveur comprenant :"
echo "- Ln serveur web (Apache2)"
echo "- Une base de donnée (mariadb)"
echo "- Le langage de programmation php dans sa dérniére version stable"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $adminadmin/utils/annulation.sh; exit;;
    esac
done
echo "Voulez-vous installer PhpMyAdmin ? (1 ou 2)"
select PhpMyAdmin in "Oui" "Non"; do
    case $PhpMyAdmin in
        Oui ) break;;
        Non ) break;;
    esac
done
clear
echo "Installation..."
#Traitement de depôt php
bash $source/utils/depo-add.sh "apt-transport-https ca-certificates" "https://packages.sury.org/php/" "wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg"
apt install apache2 mariadb php7.4 -y
if [[ "$PhpMyAdmin" ==  Oui ]]
then
  cd -R /var/www/html/
  wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
  mv phpMyAdmin-*.zip phpmyadmin
  unzip phpmyadmin.zip
  rm phpmyadmin.zip
  mv phpmyadmin-* phpmyadmin
fi
clear
echo "Merci d'indiquer un mot de passe pour l'utilisateur 'root' de la base de donée"
read $motDePasse
