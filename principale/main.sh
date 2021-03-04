#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="1commande"
TITLE="Menue"
MENU="Que voulez-vous faire ?"
SOURCE="/opt/1commande/utils/clear.sh"

OPTIONS=(1 "Serveur LAMP"
         2 "Serveur LNMP"
         3 "Docker"
         4 "Sécuriser mon serveur"
         5 "Menue des jeux")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            bash $SOURCE lamp
            ;;
        2)
            bash $SOURCE lemp
            ;;
        3)
            bash $source docker
            ;;
        4)
            bash $source securisation
            ;;
        5) 
            bash /opt/1commande/principale/games.sh
            ;;
esac