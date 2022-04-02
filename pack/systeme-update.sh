 #!/bin/bash
 #!/bin/bash

source=/opt/1commande/modules
back=/opt/1commande/utils

echo "Note :"
echo "Vous êtes sur le poin de mettre à jour vôtre systéme"
echo "Voulez-vous continuer ? (1 ou 2)"
select confirmation in "Oui" "Non"; do
    case $confirmation in
        Oui ) break;;
        Non ) bash $back/annulation.sh; exit;;
    esac
done

clear
echo "Que voulez-vous faire ?"
echo "Mettre à jour vôtre systéme (1)"
echo "Upgrade mettre à niveau vôtre systéme (2)"
select dockercompose in "Oui" "Non"; do
    case $dockercompose in
        Oui ) bash $source/docker-compose.sh break;;
        Non ) break;;
    esac
done

clear
echo "Installation éffectuer avec succet !"
exit