#!/bin/bash 


baseip="10.0.0"


for(( i=1; i<=10 ; i++)); do 

ping -c 1 -W 1 "$baseip.$i" > /dev/null 2>&1


if [ $?  -eq 0 ]; then 

echo "$baseip.$i is working" >> ipactive.txt

else 

echo "$baseip.$i is down"

fi 

done 
