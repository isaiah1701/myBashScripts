#!/bin/bash 

directory=$1 

if  [  -d "$directory" ]; then 


files=$(find "$directory" -mindepth 1 -maxdepth 1 -type f | wc -l )

echo "file count is $files"

else
 echo " directory does not exist"

 exit 2

 fi 