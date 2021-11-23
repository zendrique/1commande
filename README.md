
## ATTENTION
## En cours de développement ne doit pas être utilisé pour le moment !

## Introduction

1commande, est un projet visant à aider les personnes qui débutes dans le domaine de l'administration de serveur VPS Linux en leurs proposant des solution d'installation completement automatiser commande par exemple :
* L'installation de serveur LAMP ou LNMP
* Installation de docker
* Installation de serveur de jeu et bien plus encore

## Installation

Pour installer 1commande vous devez vous assurer des que vous disposez des prérequis :
1. Vous devez utiliser Debian 11
2. Vous devez vous assurez que vous exécuter une une insatence de Debian fraichement installer
3. Vous devez vous assurer que vous disposer des commande suivante : wget et sudo si ce n'est pas le cas vous devez les installer pour se faire :
```bash
apt update
apt install -y wget sudo
```
Une fois que tout les prérequi sont valider vous pouvez proceder à l'installation de 1commande.
Pour çe faire vous devez coller la commande suivante dans votre terminale :
```bash
sudo wget -P /home/ https://github.com/zendrique/1commande/releases/download/v0.0.1/boot-1commande.sh && bash /home/boot-1commande.sh
```

## Argument
Vous pouvez exectuer 1commandeà partir d'un autre systéme que Debian 11 mais aucun support ne sera fournie.
Pour ce faire, vous devez ajouter l'argument ```--igniore``` lors de l'installation se qui donne :
```bash
sudo wget -P /home/ https://github.com/zendrique/1commande/releases/download/v0.0.1/boot-1commande.sh && bash /home/boot-1commande.sh --igniore
```

## Fonctionnement

1commande fonctionne sur le principe d'une commande (comme son nom l'indique)
Pour démarrer le programme, il vous suffit d'utiliser la commande suivante :
```
1commande
```

## Légale

Je vous propose aujourd’hui mon projet sous la licence : GNU General Public License v3.0.
Cette licence et consultable à tout moment sur le repos GitHub ici : https://github.com/zendrique/1commande/blob/master/LICENSE

## Mise à jour

Le projet est actuellement activement maintenu à jour.
Je vous signale que je ne suis pas responsable en cas de non-fonctionnement, ou toutes autre chose en rapport avec mon logiciel. Je ne suis pas administrateur de votre serveur ni responsable !

## Bug et autre

En cas de bug vous pouvez le signaler ici : https://github.com/zendrique/1commande/issues
Vous pouvez également contribuer au projet en ajoutant de nouvelle fonctionnalités.
Vous pouvez également le Forker tout en respectant les termes du contrat de licence !

## Documentation

Vous pouvez trouver toutes la documentation concernant 1commande à cette adresse : https://docs.1commande.ml