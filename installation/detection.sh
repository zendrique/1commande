#!/bin/bash

source="/opt/1commande"
os=$(cat /etc/issue)

clear
echo "Vérification de votre OS..."

#Déclaration des fonction

function non-valide {
	# Si la distribution renvoie autre chose alors fermeture du programme et indique l'OS compatible et supression de 1commandes
	bash $source/installation/nettoyage.sh --remove
    clear
	echo "Votre OS n'est pas compatible"
	echo "OS compatible : "
	echo "- Débian 10"
	exit 1
}

# On test si le nom de la distribution correspond à debian 10
if [ "$os" -eq "Debian GNU/Linux 10 \n \l" ]; then
	clear
	echo "OS compatible"
	sleep 1
	bash $source/installation/installation.sh --full-installation
else 
	non-valide
fi

exit 0