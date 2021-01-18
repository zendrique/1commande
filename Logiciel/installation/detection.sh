#!/bin/bash
clear
echo "Vérification de votre OS..."

#Déclaration des fonction

function non-valide {
	# Si la distribution renvoie autre chose alors fermeture du programme et indique l'OS compatible
    echo "Votre OS n'est pas compatible"
	echo "OS compatible : "
	echo "- Débian 10"
	exit
}

function debian {
	# On test si le nom de la distribution correspond à debian 10
	OS=(cat /etc/*-release | grep PRETTY__NAME)
	if {
		OS="Debian GNU/Linux 10 (buster)"
		bash installation.sh --full-installation
		break
	}
	else non-valide
	break
}

# Exectution de la detection
debian
exit