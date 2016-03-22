#!/bin/bash

cale=$1

for item in `find $cale -name "*\\.sh"`
do
	grep -E "^#" $item
done 
