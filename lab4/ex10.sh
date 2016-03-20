#!/bin/bash

N=$1
k=2
p=2
for (( i=0;  i<k; i++ ))
do
	let sum=0
	for (( j=0; j<N; j++ ))
	do
		let sum+=$1
		shift
	done
	echo "Suma $i = $sum"
done
let sum=0
for (( i=0; i<p; i++ ))
do
	let sum+=$1
	shift
done
echo "Ultima gaina = $sum"
