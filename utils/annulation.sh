#!/bin/bash

main="/opt/1commande/principale/main.sh"

clear
echo "Action annuler !"


function quite {
    clear
    echo "1comande à été fermer avec succet !"
    echo "Pour le démarrer de nouveau éxéctuer la commande : '1commande'"
}

function menue {
    bash $main
}

echo "Que voulez-vous fair ? (1 ou 2)"
select choix in "Oui" "Non"; do
    case $choix in
        Quiter ) quite break;;
        Menue princiaple ) bash menue break;;
    esac
done
exit