#!/bin/bash

depth=$2
cale=$1
for (( i=1; i<=$depth; i++ ))
do
	echo -n "  "
done
name=`basename $cale`
echo "|"
for (( i=1; i<=$depth; i++ ))
do
	echo -n "  "
done
echo "--$name"
if [ -d $cale ]
then
	for item in `find $cale -mindepth 1 -maxdepth 1`
	do
		./$0 $item `expr $depth+1`
	done
fi
