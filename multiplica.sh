#!/bin/bash

read string

RESULT=2

for (( i=0; i<${#string}; i++ )); do
  RESULT=$((RESULT * ${string:$i:1}))
done

echo "$RESULT"
