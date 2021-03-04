#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="1commande"
TITLE="Menue des jeux"
MENU="Que voulez-vous faire ?"
SOURCE="/opt/1commande/utils/clear.sh"

OPTIONS=(1 "Serveur Minecraft"
         2 "Serveur ARK"
         3 "Serveur Team Fortress 2"
         4 "Serveur CS:GO")

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
esac