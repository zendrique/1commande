#!/bin/bash

#Ajout du dépôt de docker
apt-get update
apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update
#Installation de docker
apt install -y docker-ce docker-ce-cli containerd.io
exit
