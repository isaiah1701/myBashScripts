#!/bin/bash 


filename=$1

if [[  $# -eq 0 || ! -f "$filename"  ]]; then 

echo "no valid file to check"

exit 1

fi 


lines=$(grep "ERROR" "$filename"| wc -l)


echo "$lines"