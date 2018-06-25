#!/bin/bash
##
## Purpose: 
##
## Date:
##
## Author:
## 
## Version Control:
##
#################################################
##

clear 

echo "Here's your IP address:"

ifconfig | grep -E 'inet ' | grep -v 127.0.0.1 | awk '{ print $2 }' | head -n1


