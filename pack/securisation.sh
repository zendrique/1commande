#!/bin/bash

source=/opt/1commande/modules
back=/opt/1commande/utils
variable=/opt/1commande/variable

echo "Note :"
echo "Vous êtes sur le poin d'installer une suite de logicile de sécuriter :"
echo "- Fail2ban"
echo "- Cron-apt"
echo "- Rkhunter"
echo "- Logwatch"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $back/annulation.sh; exit;;
    esac
done

echo "Veuillez indiquer un mail de contact en cas d'urgence"
read mail
rm $variable/mail.txt
echo $mail > $variable/mail.txt


bash $source/fail2ban.sh
bash $source/cron-apt.sh

clear
echo "Installation éffectuer avec succet !"
exit