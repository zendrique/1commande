#!/bin/bash

source=/opt/1commande/modules
back=/opt/1commande/utils

echo "Note :"
echo "Vous êtes sur le poin de mettre en place un serveur comprenant :"
echo "- Ln serveur web (Ngnx)"
echo "- Une base de donnée (mariadb)"
echo "- Le langage de programmation php dans sa dérniére version stable"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $back/annulation.sh; exit;;
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

#Installation de apache2
bash $source/ngnx.sh
#Installation de php
bash $source/php-ngnx.sh
#Installation de maridb
bash $source/mariadb.sh
#Installation de phpmyadmin
if [[ "$PhpMyAdmin" ==  "Oui" ]]
then
  bash $source/phpmyadmin.sh
fi
clear
echo "Installation éffectuer avec succet !"
exit