#!/bin/bash

souce="/opt/1commande"

clear
echo "Mise à jour..."
bash $source/installation/nettoyage.sh
cd /opt
git clone https://github.com/zendrique/1commande
bash $source/installation/boot-1commande.sh
