#!/bin/bash


if (( $# == 0 ))
then
	read n
else
	n=$1
fi

if (( n==1 || n==2 ))
then
	echo 1
else
	a=1 ; b=1;
	for (( i=3; i<=n; i++ ))
	do
		let c=a+b
		let a=b;
		let b=c;
	done
	echo $c
fi
