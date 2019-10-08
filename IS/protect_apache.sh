#!/bin/bash

sudo groupadd apacheadmins
sudo usermod -a -G apacheadmins apacheadmin
sudo usermod -a -G apacheadmins sysadmin

sudo chown -R /etc/apache2/ root:apacheadmins


