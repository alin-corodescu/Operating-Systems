#/bin/bash

declare -i fact
let fact=1
for i in `seq 1 $1`
do
	let fact=fact*i
done
echo $fact
