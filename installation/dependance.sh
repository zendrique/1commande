#!/bin/bash

#Fonction d'installation des dépôt uniquement
function depot {
    echo "Installation des dépôt aditionelles...."
}

#Fonction d'installation des logiciels avec dépôt ajouter dans la fonction "dépôt" ou sans
function installation {
    echo "Installation des logiciels...."
    apt update
    apt install -y curl dialog zip
}

#Fonction de démarrage du menue principale
function start {
    alias 1commande='bash /opt/1commande/principale/main.sh'
    bash /opt/1commande/main.sh
}

#Détéction d'argument
 if [ "$1" -eq  "--install-depot" ]
   then
     depot
     installation
 else
     installation
     start
 fi
 exit
