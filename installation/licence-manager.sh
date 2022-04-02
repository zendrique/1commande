#!/bin/bash

fichier="/opt/1commande-licence.txt"

function formulaire {
    if [ -e $fichier ]
    then
        exit 0
    else
        licence_demmande
    fi
}

function verif {
    if [[ $licence =~ .*1comm-* ]]; then
        echo $licence >> $fichier
        exit 0
    else
        licence_demmande
    fi
}

function licence_demmande {
    echo "Veuillez saisir vôtre licence"
    echo "Pour en acheter une : https://host.zendrique.fr/index.php?rp=/store/1commande"
    read $licence
    verif
}

formulaire
exit 1