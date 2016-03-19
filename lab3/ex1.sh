#!/bin/bash

cut -d ":" -f 3 /etc/passwd | egrep "[0-9]{4,5}" | wc -l

#utilizatorii umani au UID-uri de peste 1000

#suplimentar:

egrep -v "/bin/bash" /etc/passwd | wc -l 

#aici nu inteleg exact enuntul. comanda afiseaza tot ce nu are 
# /bin/bash ca shell de login
