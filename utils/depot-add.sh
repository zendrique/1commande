#!/bin/bash

#Format 
#bash depot-add.sh "logicil de signature" "depot" "commande de signature"

echo "Dépôt :" $2
echo "Logiciel de signature :" $1
echo "Commande de signature :" $3

#Installation de logicile de signature
apt instal -y $1
#Détéction et installation du dépot
sudo add-apt-repository $2
#Signature du dépot
$3
exit