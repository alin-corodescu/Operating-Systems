#!/bin/bash

cale=$1

for item in `find $cale -name "*.txt"`
do
	dir=`dirname $item`
	name=`basename $item .txt`
	new="$dir/$name.ascii"
	mv $item $new
done
