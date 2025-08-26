#!/bin/bash 

dir=$1 


if [ ! -d "$dir" ]; then

echo "does not exist"

exit 4

fi 

threshold=$(( 1024 * 1024))

for file in "$dir"; do 

size=$( stat -c%s "$file" )

sizeMB=$(( "$size" /1024  /1024 ))

if [ "$size" -gt "$threshold "]; then 

echo "$file is $sizeMB MB"

fi 

done 