#!/bin/bash 

set -euo pipefail

threshold=80
over=0

 while read -r fs size used ava useP mount; do 


use=${useP%\%}


if [ "$use" -gt "$threshold" ]; then 

echo "WARNING: $mount  is $use% full"

over=$((over+1))

fi 

done < <(df -Pk | tail -n +2)

if [ "$over" -eq 0 ]; then

echo "All filesystems are under threshold"

fi
