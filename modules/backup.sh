#!/bin/bash

lib="/opt/1commande/libs/externe/backup.sh"
dossier="/opt/Backup-1commande"
clear

function menu {
    clear
    echo "Que voulez-vous faire ?"
    echo "1 - Crée une nouvelle instance de sauveguarde"
    echo "2 - Editer une instance de sauveguarde"
    echo "3 - Lister les instances existantes"
    select fly in "1" "2" "3"; do
        case $fly in
            1 ) creation; break;;
            2 ) editer; break;;
            3 ) list; break;;
            esac
    done
}

function creation {
    clear
    echo "Comment voulez-vous nomer vôtre instance ?"
    read nom
    bash $lib $nom
}

function editer {
    clear
    echo "Quel instance voulez-vous éditer ?"
    read editer
    rm -r $dossier/$editer
    bash $lib $editer

}

function list {
    clear
    ls $dossier
    echo "Retour au menu dans 10 secondes..."
    sleep 10
    menu
}

menu