#!/bin/bash

if [ $# -eq 0 ]
then
	read n
	read m
elif [ $# -eq 1 ]
then
	let n=$1
	read m
else
	let n=$1
	let m=$2
fi

prod=0;
for (( i=1; i<=m; i++ ))
do
	let prod+=n
done

echo $prod
