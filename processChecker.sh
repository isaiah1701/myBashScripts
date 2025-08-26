#!/bin/bash 

process=$1 

if pids=$(pgrep -x "$process"); then 

for pid in $pids; do 

echo "$pid is running "

done 
else 
echo "not running"
exit 1 

fi 

