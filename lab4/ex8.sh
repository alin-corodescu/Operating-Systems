#!/bin/bash

declare -a v

if [ $# -eq 0 ]
then
	read nr
	for i in `seq 1 $nr`
	do
		read v[$i]
	done
else
	nr=$#
	for i in `seq 1 $nr`
	do
		v[$i]=$1
		shift
	done
fi

declare -a fr
for i in `seq 1 $nr`
do
	fr[$i]=0
done
max=0
poz=0
for i in `seq 1 $nr`
do
	let fr[${v[$i]}]+=1
	if (( ${fr[${v[$i]}]} > max ))
	then
		let max=${fr[${v[$i]}]}
		let poz=i
	fi
done

echo "Numarul ${v[$poz]} apare de $max ori "
