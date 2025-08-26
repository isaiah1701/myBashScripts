#!/bin/bash 

logfile=$1 

if  [[ $# -eq 0 ||  ! -f "$logfile "]]; then 

echo "Usage $0 <logfile>"

exit 2 

fi 


awk {'print $1'} "$logfile" | sort | uniq -c | sort -nr | head -n 5 | awk {'print $1 $2'}
