#!/bin/bash

source="/opt/1commande"

echo "Supression des fichiers..."
cd $source
rm -r installation/ libs/ modules/ pack/ princpiale/ utils/
rm LICENSE README.mkdri
rm -f /usr/bin/1commande