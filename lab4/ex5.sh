#!/bin/bash

#daca am mai mult de 9 numere
sum=0
for (( i=0; i<$#; i++ ))
do
	let sum+=$1
	shift
done
medie=`echo "scale=5; $sum/$#" | bc -l`
echo $medie
