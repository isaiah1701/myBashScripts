#!/bin/bash 
over=0 

 while read -r fs size used ava useP mount; do 


usage=${useP%\%}


if [ "$usage" -gt 80 ]; then 

over=$((over+1))
echo "Warning $fs is $useP full"

fi 

done < <(df -h | tail -n +2)

if [ "$over" -eq 0 ]; then 

echo "All filesystems are under threshold"

fi 