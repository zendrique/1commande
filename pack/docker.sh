#!/bin/bash

source=/opt/1commande/modules
back=/opt/1commande/utils

echo "Note :"
echo "Vous êtes sur le poin d'installer docker :"
echo "Docker n'est pas compatible avec tout les type de virtualistion si vous utiliser un VPS."
echo "En cas de non compatibiliter avec votre hyperviseur 1commande vous en avertiras"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $back/annulation.sh; exit;;
    esac
done

#Installation de Docker
bash $source/docker.sh

clear
echo "Voulez-vous églament installer docker-compose ? (1 ou 2)"
select dockercompose in "Oui" "Non"; do
    case $dockercompose in
        Oui ) bash $source/docker-compose.sh break;;
        Non ) break;;
    esac
done

clear
echo "Installation éffectuer avec succet !"
exit