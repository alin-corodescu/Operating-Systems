#/bin/bash

ascuns=0
alias=0
subdir=0

for item in `find $1 -mindepth 1`
do
	if test -d $item
	then
		let subdir+=1
	fi
	if test -h $item
	then
		let alias+=1
	fi
	name=`basename $item`
	if [[ $name =~ ^\..* ]]
	then
		let ascuns+=1
	fi
done
echo "Subfoldere= $subdir"
echo "Linkuri = $alias"
echo "Ascuns = $ascuns"
