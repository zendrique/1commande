#!/bin/bash

#Fonction d'installation des dépôt uniquement
function depot {
    echo "Installation des dépôt aditionelles...."
}

#Fonction d'installation des logiciels avec dépôt ajouter dans la fonction "dépôt" ou sans
function installation {
    echo "Installation des logiciels...."
    apt update
    apt install -y curl dialog
}

#Fonction de démarrage du menue principale
function {
    alias adminadmin='bash /opt/adminadmin/main.sh'
    bash /opt/adminadmin/main.sh
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
