#!/bin/bash

result=$(ls -1 /etc/apache2 | awk '/\.sh$/')

if [ -z "$result" ]
then
    echo "Apache directory safe."
else
    echo "WARNING: SHELL COMMANDS IN APACHE DIRECTORY."
fi

