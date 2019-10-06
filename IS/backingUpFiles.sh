#!/bin/bash
fdisk -l

echo "Enter number to select the destionation drive of the backup"
echo "1 /dev/sdb1"
echo "2 /dev/sdb2"
echo "3 /dev/sdb3"
echo "4 /dev/sdb4"

read number
directory="/dev/sdb$number"

tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --one-file-system $directory