#!/bin/bash
# Dossier de 1commande et "opt" car c'est un programme externe aux dépôts debian.
cd /opt/
apt update
apt install -y git
sudo git clone https://github.com/zendrique/1commande
sudo rm /home/boot-1commande.sh
sudo bash 1commande/installation/detection.sh
exit