#/bin/bash


cut -d: -f1 /etc/passwd | egrep "^ana|[^o]ana" | wc -l
