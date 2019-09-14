#!/bin/bash

cat $1 | tr " " "\n" | tr -d '[:punct:]' | tr -d "¿" | tr -d "¡" | sort | uniq -ic | sort -nr
