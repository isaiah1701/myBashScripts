#!/bin/bash

logfile1=$1
logfile2=$2  
logfile3=$3 


if [[ $# -lt 3 ]]; then

echo "enter 3 files"
exit 1 

fi 

if [[ ! -f "$logfile1" || ! -f "$logfile2" || ! -f "$logfile3" ]]; then 


echo "enter valid files"

exit 1 

fi 

countfunction(){

  local param1=$1
  grep -c  "ERROR" "$param1"

}


error1=$(countfunction "$logfile1")
error2=$(countfunction "$logfile2")
error3=$(countfunction "$logfile3")


textOutput(){
 local num=$1

 if [[ "$num" -gt 0 ]]; then 

 echo "found $num errors"

 else 
 echo "No errors found"
 fi 

}

output1=$(textOutput "$error1")
output2=$(textOutput "$error2")
output3=$(textOutput "$error3")

echo "$output1"
echo "$output2"
echo "$output3"
