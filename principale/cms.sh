#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="1commande"
TITLE="CMS"
MENU="Que voulez-vous installer ?"
SOURCE="/opt/1commande/utils/clear.sh"

OPTIONS=(1 "WordPress"
         2 "NextCloud")

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
            bash $SOURCE wordpress
            ;;
        2)
            bash $SOURCE nextcloud
            ;;
esac