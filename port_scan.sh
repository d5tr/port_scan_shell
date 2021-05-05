#!/bin/bash

if ["$1" == "" ]
then
  echo 'Usage: ./port_scan.sh [IP]'

  echo 
Example: ./port_scan.sh 192.168.1.1"
else
  echo "Start scaning ..."
  nc -nvz $1 1-65535 > $1.txt 2>&1
fi
tac $1.txt
rm -rf $1.txt
