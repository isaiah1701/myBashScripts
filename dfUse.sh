#!/bin/bash 

set -euo pipefail
over=0  # over usage coutner 

df -h | tail -n +2 | while read -r fs size used ava usep mount ; do 


use=${usep%\%}


if [ "$use" -gt 90 ]; then 


echo " Use is over 90% at $mount"
over=$((over + 1))
fi 

done 

if [ $over -eq 0 ]; then 

echo " all file systems healthy" 

fi 

