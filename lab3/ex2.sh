#/bin/bash

cut -d: -f4 /etc/passwd | egrep "202" | wc -l
