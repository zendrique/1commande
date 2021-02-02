#!/bin/bash
# Dossier de 1commande et "opt" car c'est un programme externe aux dépôts debian.
cd /opt/
apt update
apt install -y git
git clone https://github.com/zendrique/1commande
bash 1commande/detection.sh
exit