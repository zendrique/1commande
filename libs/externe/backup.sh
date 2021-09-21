#!/bin/bash

#Backup développer par Zendrique
#Script dédier à la sauveguarde de dossier ou fichier spécifique

nom=$1

clear
cd /opt
mkdri Backup-1commande
git clone https://github.com/zendrique/Backup
mv Backup $nom
cd $nom
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

echo "bash /opt/Backup-1commande/"$nom"/backup.sh" $fichier $nom $emplacement $intervalle >> /opt/Backup/run-backup.sh
