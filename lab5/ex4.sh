#!/bin/bash

path=$1
#if (( $# == 2 ))
#then
#	export fifo=0
#	export subdir=0
#fi
fifo=0
subdir=0
for item in `find $1 -mindepth 1 -maxdepth 1`
do
	if [ -d $item ]
	then
		#echo "am gasit subdir-ul $item"
		let subdir+=1
		result=`./$0 $item`
		x=`echo $result | cut -d: -f1`
		y=`echo $result | cut -d: -f2`
		let fifo+=x
		let subdir+=y
	elif [ -p $item ]
	then
		#echo "am gasit pipe-ul $item"
		let fifo+=1
	fi
done
echo "$fifo:$subdir"
