#!/bin/bash 
set -euo pipefail
directory=$1

if [ $# -eq 0 ]; then 

echo "Usage: $0 <directory>"

exit 1 

fi 


if [ ! -d "$directory" ]; then 

echo "directory does not exist"

exit 1

fi


files=$(find  "$directory" -maxdepth 1 -type f | wc -l )
subdirs=$(find  "$directory" -maxdepth 1 -mindepth 1 -type d  | wc -l )

echo "Files: $files"
echo "Directories: $subdirs"