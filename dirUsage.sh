#!/bin/bash 
 

directory=$1

if [[ $# -eq 0 || ! -d "$directory" ]]; then 

echo "Enter valid file"

exit 1 

fi 




du -h | find "$directory" -type  f | sort -nr | head -n 5 