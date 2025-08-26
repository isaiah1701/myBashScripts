#!/bin/bash 

filename=$1

if [[ -f "$filename" && -r "$filename" ]]; then 

errorCount=$(grep "ERROR" $filename | wc -l )

echo "number of lines with error is $errorCount"

else

echo "file does not exist or is not readable"
exit 3 
fi
