#!/bin/bash

apt install -y mariadb-server mariadb-client
echo "Voulez-vous procerder à une installation de maridb sécuriser ? (1 ou 2)"
select yn in "Oui" "Non"; do
        case $yn in
            Oui ) mysql_secure_installation; break;;
            Non ) break;;
        esac
    done
exit