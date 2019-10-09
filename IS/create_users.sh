#!/bin/bash

sudo useradd -m -s "/bin/bash" legaluser
sudo passwd legaluser
sudo useradd -m -s "/bin/bash" apacheadmin
sudo passwd apacheadmin

