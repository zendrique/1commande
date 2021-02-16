#!/bin/bash

mail=$(cat /opt/1commande/variable/mail.txt)
config="/etc/logwatch/conf/"

apt install -y logwatch
cp /usr/share/logwatch/default.conf/logwatch.conf /etc/logwatch/conf/logwatch.conf
