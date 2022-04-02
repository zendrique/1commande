#!/bin/bash

clear

function upgrade {
    cd /etc/apt
    sed -i 's/buster/bullseye/' sources.list
    sed -i 's/"buster/updates"/"bullseye-security"/' sources.list
    apt update
    apt full-upgrade -y
    clear
    echo "Redémarrage du serveur dans 10 secondes"
    sleep 10
    reboot
}

function cancel {
    clear
    echo "Oppération annuler !"
    exit 0
}

echo "Attention ! Voulez-vous vraiment upgrade vôtre systéme ?"
echo "Sela risque de changer la version de vôtre Debian"
echo "Voulez-vous continuer ? (1 ou 2)"
select start in "Oui" "Non"; do
    case $start in
        Oui ) upgrade;;
        Non ) cancel;;
        esac
done