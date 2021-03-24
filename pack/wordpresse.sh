#!/bin/bash

source=/opt/1commande/modules
back=/opt/1commande/utils
pack=/opt/1commande/pack
db=/opt/1commande/temp
lib=/opt/1commande/libs/

echo "Note :"
echo "Vous êtes sur le poin de mettre en place un serveur comprenant :"
echo "- Le serveur web (Apache2)"
echo "- Une base de donnée (mariadb)"
echo "- Le langage de programmation php dans sa dérniére version stable"
echo "- Le CMS WordPress"
echo "Important :"
echo "Toutes les données qui ce trouve dans le dossier /var/www/html seront écraser !"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $back/annulation.sh; exit;;
    esac
done

# Execution du pack d'installation LAMP
bash $pack/lamp.sh

# Installation de WordPresse
bash $source/wordpresse.sh

# Création de la bse de donées
echo "Comment voulez-vous nomer votre bde de donées ?"
read nom
echo "Comment voulez-vous nomer l'utilisateur de la base de données ?"
read utilisateur
echo "Quel mot de passe voulez-vous mettre pour la base de donées"
read mdp

bash $libs/createurDB.sh $nom $utilisateur $mdp

clear
echo "Installation éffectuer avec succet !"
echo "Information base données à renseigner dans WordPress lors de la connection à la base de données"
echo "Host : 127.0.0.1"
echo "Nom de la base de donnée :" $nom
echo "Utilisateur de la base de donnée :" $utilisateur
echo "Mot de passe de la base de donnée :" $mdp
exit