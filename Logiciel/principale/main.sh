#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="AdminAdmin"
TITLE="Menue"
MENU="Que voulez-vous faire ?"
SOURCE="/opt/admiadmin/modules"

OPTIONS=(1 "Serveur LAMP"
         2 "Serveur LNMP"
         3 "Option 3")

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
            bash $SOURCE/lamp.sh
            ;;
        2)
            bash $SOURCE/lemp.sh
            ;;
        3)
            echo "You chose Option 3"
            ;;
esac