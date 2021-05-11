#!/bin/bash

source=/opt/1commande/modules
back=/opt/1commande/utils

echo "Note :"
echo "Vous êtes sur le poin de mettre en place un serveur comprenant :"
echo "- Le serveur web (Apache2)"
echo "- Une base de donnée (mariadb)"
echo "- Le langage de programmation php dans sa dérniére version stable"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $back/annulation.sh; exit;;
    esac
done
clear
echo "Installation..."

#Installation de apache2
bash $source/apache2.sh
#Installation de php
bash $source/php-apache2.sh
#Installation de maridb
bash $source/mariadb.sh
clear
echo "Installation éffectuer avec succet !"
exit