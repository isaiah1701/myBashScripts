#!/bin/bash 


ps aux | sort -k4 -nr | awk 'NR == 1  || NR <=6 {print $2 , $4 , $11}' | head -5 