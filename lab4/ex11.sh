#!/bin/bash

uid=$1
cuv=":$1:"

echo "Full-name = `cut -d: -f4,5 /etc/passwd  | grep $uid | cut -d: -f2 | cut -d, -f1`"

echo "Grupuri:"
id -Gn `grep $cuv /etc/passwd | cut -d: -f1` 
