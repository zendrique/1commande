#!/bin/bash

DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

display_result() {
  dialog --title "$1" \
    --no-collapse \
    --msgbox "$result" 0 0
}

while true; do
  exec 3>&1
  selection=$(dialog \
    --backtitle "1Commande - menue principale" \
    --title "1Commande" \
    --clear \
    --cancel-label "Quiter" \
    --menu "Que voulez-vous faire ?" $HEIGHT $WIDTH 4 \
    "1" "Serveur LAMP" \
    "2" "Serveur LNMP" \
    "3" "Docker" \
    "4" "Sécuriser mon serveur" \
    "5" "Menue des jeux" \
    "6" "Menue des CMS" \
    "7" "Mettre à jour de 1Commande" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
  case $exit_status in
    $DIALOG_CANCEL)
      clear
      echo "1Commande fermer avec succet."
      exit
      ;;
    $DIALOG_ESC)
      clear
      echo "Fermeture de 1Commande." >&2
      exit 1
      ;;
  esac
  case $selection in
    0 )
      clear
      echo "1Commande - Terminer."
      ;;
    1 )
      bash $SOURCE lamp
      ;;
    2 )
      bash $SOURCE lemp
      ;;
    3 )
      bash $source docker
      ;;
    4 )
      bash $source securisation
      ;;
    5 )
      bash /opt/1commande/principale/jeux.sh
      ;;
    6 )
      bash /opt/1commande/principale/cms.sh
      ;;
    7 )
      bash /opt/1commande/installation/updater.sh
      ;;
  esac
done