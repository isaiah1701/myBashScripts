#!/bin/bash 

set -euo pipefail

filename=$1 

if [ ! -f "$filename" ]; then 

echo "ERROR file does not exist"

exit 1 

else 

wc -l -w -c "$filename"

fi 