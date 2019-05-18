#!/bin/bash 
#Muntaha Pasha
#Chakrya Ros
 
filename=$1
 
if [ "$filename" = "" ]; then
    printf"Usage: Times.sh filename\n"
    exit 1
 
fi
 
sort -k3,3 -k2,2 -k1,1n $filename | while read info
do
    time1=$(echo "$info" | cut -d " " -f4)
    time2=$(echo "$info" | cut -d " " -f5)
    time3=$(echo "$info" | cut -d " " -f6)
 
    let average="($time1+$time2+$time3)/3"
 
 
    printf "$info" | cut -d " " -f 1 | tr '\n' " "
    printf "[$average]"
    printf " "
    printf "$info" | cut -d " " -f 3 | tr "\n" ","
    printf " "
    printf "$info" | cut -d " " -f 2 
 
done