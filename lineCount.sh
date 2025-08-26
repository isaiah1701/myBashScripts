#!/bin/bash 

filename=$1

if [[ $# -eq 0  || ! -f $filename ]]; then 

echo "no file to check"

exit 1 

fi 



lines=$(wc -l < "$filename")

echo "$lines"