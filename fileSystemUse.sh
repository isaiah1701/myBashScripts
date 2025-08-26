#!/bin/bash 
set -euo pipefail

threshold=${1:-80}
over=0

while read -r fs size used avail useP mount; do  

usage=${useP%\%}

if [ "$usage" -gt "$threshold" ]; then 

over=$((over+1))

echo "$fs usage $useP"

fi 

done < <(df -Pk | tail -n +2)

if [ "$over" -gt 0 ]; then 

exit 1 

fi