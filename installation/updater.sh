#!/bin/bash

souce="/opt/1commande"

clear
echo "Mise à jour..."
bash $source/installation/nettoyage.sh
cd $source
mkdri update
cd update
git clone https://github.com/zendrique/1commande
mv -t -r installation/ libs/ modules/ pack/ princpiale/ utils/ $source
mv -t LICENSE README.md $source
cd $source
rm -r backup/
bash $source/installation/installation.sh
exit 0
