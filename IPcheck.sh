#!/bin/bash 


prefix=$1

for (( i=0 ; i<=254; i++ )); do 


ping -w 1  -c 1 "$prefix.$i" > /dev/null 2>&1

if [ $? -eq 0  ]; then 

echo "$prefix.$i is up"

fi 

done 