#!/bin/bash

apt install -y nginx
systemctl start nginx
systemctl enable nginx
exit