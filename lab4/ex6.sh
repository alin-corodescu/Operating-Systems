#!/bin/bash

if (( $# != 0 ))
then
	min=$1
	max=$1
fi
for (( i=2; i<=$#; i++ ))
do
	if (( $i < min ))
	then
		min=$i
	fi
	if (( $i > max ))
	then
		max=$i
	fi
done

echo "Maximul = $max"
echo "Minimul = $min"
