#!/bin/bash 


#accept cidr block
baseip=$1
ip=1 
>aliveip.txt

if [ -z "$1" ]; then
   echo "add base ip"
   exit 1 
fi


while [ $ip -lt 255 ]; do

ping -w 1 -c 1 "$baseip.$ip" > /dev/null 2>&1

if [ $? -eq 0  ];then 


echo "$baseip.$ip is up" >> aliveip.txt

else
echo "$baseip.$ip is down" 

fi

ip=$((ip + 1))


done
count=$(wc -l < aliveip.txt)

echo "scan complete $count ips responded"