#!/bin/bash

clear
echo "Vérification de votre OS..."

source="/opt/1commande"
os=$(cat /etc/issue)

#Déclaration de la fonction

function non-valide {
	# Si la distribution renvoie autre chose alors fermeture du programme et indique l'OS compatible et supression de 1commandes
	bash $source/installation/nettoyage.sh --remove
    clear
	echo "Votre OS n'est pas compatible"
	echo "OS compatible : "
	echo "- Débian 11"
	exit 1
}

# On test si le nom de la distribution correspond à debian 11
if [ "$os" = "Debian GNU/Linux 11 \n \l" ]; then
	clear
    echo "OS compatible"
	sleep 1
	bash $source/installation/installation.sh --full-installation

else
	non-valide
    echo "non valide"
fi
exit 0