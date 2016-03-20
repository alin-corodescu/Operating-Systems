#!/bin/bash

lista=`grep :202: /etc/passwd | grep ^$1 | cut -d: -f1 `
for user in $lista
do
	adr="http://students.info.uaic.ro/~$user"
	t1=`links -dump $adr/index.html | grep -c "Error 404"`
	t2=`links -dump $adr/index.htm | grep -c "Error 404"`
	t3=`links -dump $adr/index.php | grep -c "Error 404"`
	if test $t1 -eq 0 -o $t2 -eq 0 -o $t3 -eq 0
	then
		echo "$user are pagina"
	fi
done
