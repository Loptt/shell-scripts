#!/bin/bash

echo "Establishing new Password Policies..."
s="password requisite pam_cracklib.so minlen=14 dcredit=1 ocredit=1"
n=$(cat /etc/pam.d/common-password | grep pam_unix.so -n | cut -d: -f1)
n=$((n-1))
sed -i "$n a $s" /etc/pam.d/common-password
exit
