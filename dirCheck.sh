#!/bin/bash 

dir=$1 

if [ ! -d "$dir" ]; then 

echo "$dir does not exist"

exit 1 
 
else 

subdirs=$( ls -l "$dir" | grep '^d' | wc -l  )
totalfiles=$( ls -l "$dir" | grep '^-'| wc -l  )

echo " $subdirs subdirectories and $totalfiles total files"

fi 

