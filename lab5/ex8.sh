#/bin/bash

d=$1
n=$2

for item in `find $d -type f`
do
	if [ -r $item -a -x $item ]
	then
		head -n $n $item
	fi
done

