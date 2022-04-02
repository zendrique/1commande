#!/bin/bash

main="/opt/1commande/principale/main.sh"

clear
echo "Action annuler !"


function quite {
    clear
    echo "1comande à été fermer avec succet !"
    echo "Pour le démarrer de nouveau éxéctuer la commande : '1commande'"
    exit 0
}

function menue {
    bash $main
    exit 0
}

echo "Que voulez-vous faire ? (1 ou 2)"
select choix in "Quiter" "Menue princiaple"; do
    case $choix in
        Quiter ) quite break;;
        Menue princiaple ) menue break;;
    esac
done
exit 0