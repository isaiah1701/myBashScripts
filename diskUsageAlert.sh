#!/bin/bash 

set -euo pipefail 

if [[ $# -ne 1 ]]; then

echo "Usage: $0 <threshold>"
exit 1 

fi 


threshold=${1:-80} 


while read -r size  used avail useP mounted; do 

usage={$useP%\%}

if [ ]
