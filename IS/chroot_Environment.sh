#!/bin/bash

echo "Establishing virtual environment for apache ..."

mkdir -p /var/www/var/run

chown -R root:root /var/www/var/run

s="ChrootDir /var/www"
n=$(cat /etc/apache2/apache2.conf | grep PidFile -n | cut -d: -f1|tail -n 1)

sed -i "$n a $s" /etc/apache2/apache2.conf