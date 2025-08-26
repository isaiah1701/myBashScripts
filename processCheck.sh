#!/bin/bash 

set -euo pipefail



if [ $# -ne 1 ]; then 

echo "Usage: $0 <process>"
exit 1

fi   

process=$1 
if pids=$(pgrep -x "$process"); then 

echo "$process is currently running with PID(s): $pids"

else 

echo "$process is not running"
exit 1 
fi 