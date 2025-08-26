#!/bin/bash 


process=$1


if [ $# -eq 0 ]; then 

echo "Usage: $0 <proc_name>"

exit 2

fi 


procNo=$( pgrep -x "$process" | wc -l )


echo "$process:$procNo"