#/bin/bash

who | cut -d " " -f1 | sort -d -u
