#!/bin/bash

source="/opt/1commande"

function full-installation {
    echo "Installation des logicieles"
    bash dependance.sh --install-depot
}

function installation {
    bash $source/installation/dependance.sh
}

function commande {
    mv $source/installation/1commande /usr/bin/
    chmod +x $source/installation/1commande
}

function update {
    bash $source/installation/update.sh
}

#Détéction d'argument
if [ "$1" -eq  "--full-installation" ]
   then
    commande
else
    update
    installation
    commande
 fi
 exit 0