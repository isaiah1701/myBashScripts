#!/bin/bash 

file=targets.txt 

if [ ! -s "$file" ]; then 

echo " file empty"
exit 1 
fi 

while read -r ip; do 

nc -z -w 2  "$ip" 22 > /dev/null 2>&1

if [ $? -eq 0 ]; then


echo "$ip is reachable"
echo "$ip" >> reachable.txt

else 

echo "$ip is not reachable"

fi 

done 