#!/bin/bash 

info=$(df -h)


while read -r _ _ _ var _ ; do 

use=${var%\%}

if [$use -gt 80]; then 

echo "over 80% full , $use % full"

fi 

done 