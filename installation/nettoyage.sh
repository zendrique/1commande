#!/bin/bash

source="/opt/1commande"

function update {
    echo "Supression des fichiers..."
    cd $source
    rm -r installation/ libs/ modules/ pack/ princpiale/ utils/
    rm LICENSE README.mkdri
    rm -f /usr/bin/1commande
}

function remove {
    cd /opt
    rm -r 1commande

}

if [ "$1" -eq  "--remove" ]
   then
   remove
else
   update
 fi
 exit 0