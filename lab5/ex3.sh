#/bin/bash

nr=0
op="start"
fisier=$1
echo >$fisier
until [ "$op" = "q" ]
do
	echo -n "a=" ; read a
	echo -n "b=" ; read b;
	echo -n "operatorul este :" ; read op
	if [ "$op" = "q" ]
	then 
		break
	else
		let nr++
		case "$op" in
			"+" ) let result=a+b ;;
			"-" ) let result=a-b ;;
			"*" ) let result=a*b ;;
			"/" ) let result=a/b ;;
		esac
		echo "$nr: $a $op $b = $result" >>$fisier
	fi
done
echo "Numar total de operatii= $nr" >>$fisier
