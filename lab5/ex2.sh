#/bin/bash

declare -i maxim
declare -i total
maxim=0
total=0
function f()
{
	for item in `find $1 -mindepth 1`
	do
		if [ -d $item ]
		then
			f $item
		else
			if [ -n `file $item | grep "ASCII TEXT"` ]
			then 
				#echo "am gasit fisier ascii"
				nrcuv=`wc -w $item | cut -d " " -f1`
				let lg=`wc -L $item | cut -d " " -f1`
				if [ $lg -gt $maxim ]
				then
					let maxim=lg
				fi
				let total+=nrcuv
			fi
		fi
	done
}

f $1
echo "Lungimea maxima=$maxim"
echo "Numarul total=$total"

