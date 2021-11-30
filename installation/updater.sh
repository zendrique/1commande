#!/bin/bash

source="/opt/1commande"
version=$(cat $source/1commande/version.txt)
mkdir $source/update
wget -p $source/update https://raw.githubusercontent.com/zendrique/1commande/master/version.txt
version_update=$(cat $source/updater/version.txt)

if [ "$version" == "$version_update" |bc -l] ; then
    ras
else
    update
fi

function ras {
    clear
    echo "Aucune Mise à jour disponible"
    exit 0
}

function update {
    clear
    echo "Mise à jour disponible !"
    sleep 4
    cd /opt
    rm -r 1commande
    rm /usr/bin/1commande
    git clone https://github.com/zendrique/1commande
    bash $source/installation/installation.sh
    exit 1
}