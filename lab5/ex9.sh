#!/bin/bash


cale=$1

for item in `find $cale -mindepth 1 -maxdepth 1 -type f`
do
	if [ `file $item | grep -c1 "C source"`  -eq 1 ]
	then
		gcc $item
	elif [ `file $item | grep -c1 "ASCII text"` -eq 1 ]
	then
		cat $item
	fi
done
