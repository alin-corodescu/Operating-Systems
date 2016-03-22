#!/bin/bash

lines=0
chars=0

for item in `find $1 -mindepth 1 -maxdepth 1`
do
	if [ -d item ]
	then
		apel=`./$0 $item`
		let lines+=`echo $apel | cut -d: -f1`
		let chars+=`echo $apel | cut -d: -f2`
	else
		let lines+=`wc -l $item | cut -d " " -f1`
		let chars+=`wc -m $item | cut -d " " -f1`
	fi
done

echo "$lines:$chars"
