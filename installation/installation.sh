#!/bin/bash

source="/opt/adminadmin"

function download {
    cd -R $source/updater
    wget https://jesuisunlien.quelquechose/version.txt
}

function create-updater {
    echo "Creation de l'updater..."
    download
    mv $source/updater/version.txt $source/updater/local-version.txt
}

function updater {
    echo "Vérification de mise à jour..."
    download
    diff $source/updater/local-version.txt $source/updater/version.txt

}

function full-installation {
    echo "Installation des logicieles"
    bash dependance.sh --install-depot
}

function installation {
    bash dependance.sh
}

#Détéction d'argument
 if [ "$1" -eq  "--full-installation" ]
   then
     create-updater
     full-installation
     

 else
     updater
     installation
 fi
 exit