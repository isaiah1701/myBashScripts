#!/bin/bash 


directory=$1 

# check dir is inputted 


find "$directory" -mindepth 1 -maxdepth 1 -type f -size +500M  -exec du -h {}\;