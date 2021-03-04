#!/bin/bash

source="/opt/1commande"
update_file="/opt/1commande/variable"

function download {
    cd -R $update_file/
    wget https://zendrique.ml/variable/version.txt
    version=$(cat $source/updater/version.txt)
}

function create-updater {
    echo "Creation de l'updater..."
    download
    mv $update_file/version.txt $update_file/local-version.txt
    localversion=$(cat $source/updater/local-version.txt)
}

function updater {
    echo "Vérification de mise à jour..."
    download
    if [ "$version" -eq "$localversion" ]
}

function full-installation {
    echo "Installation des logicieles"
    bash dependance.sh --install-depot
}

function installation {
    bash $source/installation/dependance.sh
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