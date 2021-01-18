#!/bin/bash
# Dossier de adminadmin et "opt" car c'est un programme externe aux dépôts debian.
cd /opt/
apt update
apt install -y git diff
git clone https://github.com/zendrique/adminadmin
bash adminadmin/detection.sh
exit