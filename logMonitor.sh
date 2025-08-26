#!/bin/bash 

logfile="/var/log/syslog"
errorlog=errors.log

tail -f $logfile | grep "ERROR" | tee -a $errorlog