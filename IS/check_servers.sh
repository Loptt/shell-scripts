#!/bin/bash

result=$(sudo netstat -plntu | grep LISTEN | awk '!/:80/ && !/:22/')

if [ -z "$result" ]
then
    echo "No other poets listening. System secure"
else
    echo "WARNING: OTHER PORTS LISTENING"
    echo "$result"
fi