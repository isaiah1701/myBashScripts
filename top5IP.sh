#!/bin/bash 

logfile=$1 

if [ $# -eq 0 ]; then 

echo "Usage: $0 <logfile>"
exit 1 


fi 

if [ ! -f "$logfile" ]; then 

echo "Error , file does not exist"

exit 1 

fi




awk {'print $1'} "$logfile" | sort | uniq -c | sort -nr | head -n 5 