#/bin/bash

for path in `find $1 -name "*.cpp" -maxdepth 1`
do
	obj=`basename -s ".cpp" $path`
	g++ $path -o $obj
done
