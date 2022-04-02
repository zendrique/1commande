#!/bin/bash

mail=$(cat /opt/1commande/variable/mail.txt)
config="/etc/cron-apt"

apt install -y cron-apt
grep security /etc/apt/sources.list > /etc/apt/security.sources.list
rm /etc/cron-apt/config
echo "APTCOMMAND=/usr/bin/apt-get" > $config/config
echo "OPTIONS=-o quiet=1 -o Dir::Etc::SourceList=/etc/apt/security.sources.list" > $config/config
echo "MAILTO="$mail > $config/config
echo "MAILON=upgrade" > $config/config

rm /etc/cron-apt/action.d/3-download
echo "dist-upgrade -y -o APT::Get::Show-Upgraded=true" > $config/action.d/3-download
