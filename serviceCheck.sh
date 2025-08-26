#!/bin/bash 


service=$1 

logfile=$2 

if [ ! -f  $logfile ]; then 

echo " add logfile "

exit 1 

fi 



if systemctl is-active --quiet "$service" ; then 


echo " $service is working" | tee -a $logfile 

else 

echo " $service not working" | tee -a $logfile 

systemctl start "$service"


if systemctl is-active --quiet "$service" ; then 


echo " $service is working" | tee -a $logfile 

else 

echo " $service  still not working after restart" | tee -a $logfile 



fi 



