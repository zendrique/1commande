#!/bin/bash

mail=$(cat /opt/1commande/variable/mail.txt)
config="/etc/default/rkhunter"

apt install -y rkhunter

rm $config/

echo "CRON_DAILY_RUN=yes"
echo "REPORT_EMAIL="$mail
rkhunter --propupd
