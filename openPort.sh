#!/bin/bash 


port=$1

if  [ -z "$port" ]; then

echo " enter port number and try again"

fi 

if nc -z -v -w1 localhost $port ; then 

echo "Port: $port is open"

else 

echo " port: $port is closed"

fi 