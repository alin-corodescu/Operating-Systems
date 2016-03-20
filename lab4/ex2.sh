#/bin/bash

if [ $# -eq 0 ]
then
	read n
else
	n=$1
fi

function f ()
{
	if  [ $1 -le 1 ]
	then
		echo 1
	else
		let n_1=$1-1
		rez=`f $n_1`
		expr $1 \* $rez
	fi
}


f $n

