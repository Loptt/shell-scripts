#!/bin/bash

paste $1 $2 | expand | tr -s " " > result.txt