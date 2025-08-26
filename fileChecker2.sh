#!/bin/bash 

file=$1 

if [[ -f "$file" && -r "$file" && $# -eq 1 ]]; then 

lines=$(wc -l "$file")
words=$(wc -w "$file")
chars=$(wc -m "$file")



echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"


else 

echo "invalid"

exit 1 

fi