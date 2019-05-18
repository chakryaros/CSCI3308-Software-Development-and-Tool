#!/bin/bash
#Muntaha Pasha
#Chakrya Ros
 
filename=$1
 
if [ "$filename" = "" ]; then
    printf "Usage: RegexAnswers.sh filename\n"
    exit 1
fi
 
grep '[0-9]$' $filename | wc -l
grep '^[aeiouAEIOU]' $filename | wc -l
egrep '^[a-zA-Z]{9}$' $filename | wc -l
egrep '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' $filename | wc -l
egrep '[3][0][3]-[0-9]{3}-[0-9]{4}$' $filename | wc -l
egrep '^[0-9].*[aeiouAEIOU]$' $filename | wc -l
egrep '.*@UCDenver\.edu' $filename | wc -l
egrep '^[n-zN-Z][a-zA-Z]*\.[a-zA-Z]*@[a-zA-Z0-9\.\-]' $filename | wc -l


