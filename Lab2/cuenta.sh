#!/bin/bash

cat $1 | grep -iw $2 | wc -l
