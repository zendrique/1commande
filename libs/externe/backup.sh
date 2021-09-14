#!/bin/bash

#Backup développer par Zendrique
#Script dédier à la sauveguarde de dossier ou fichier spécifique

clear
cd /opt
git clone https://github.com/zendrique/Backup
cd Backup
bash backup.sh --install

clear
echo "Emplacement du dossier ou fichier à sauveguarder"
read fichier

echo "Nom du dossier ou du fichier à sauveguarder"
read nom

echo "Enmplacement de la sauveguarde"
read emplacement

echo "Intervalle de sauveguarde (en jour)"
read intervalle