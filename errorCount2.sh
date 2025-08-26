#!/bin/bash 

logfile=$1 

if [[  $# -eq 0 || ! -f "$logfile"  ]]; then 

echo "enter valid file"
exit 1 
fi 

count=$(grep -c "ERROR" "$logfile")


if [ "$count" -gt 0 ]; then 

echo "Found $count errors"

else 

echo "No errors found"

fi 