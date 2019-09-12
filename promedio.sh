#!/bin/bash
SUM=0

for arg in $@
do
    SUM=$(($SUM + arg))
done

echo "$(($SUM / 5))"

