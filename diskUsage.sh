#!/bin/bash 

df -h | tail -n +2 | while read -r filesystem size usePct avail use mount; do

usage=${usePct%\%}

if [ "$usage" -gt 80 ]; then

echo "WARNING: $filesystem is $usage% full"

fi

done



