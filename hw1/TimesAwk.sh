#!/bin/bash
#Chakrya Ros
#Muntaha Pasha


awk '{sum = $4 + $5 + $6; print $1" ["(sum/3) "] "$3", "$2}' "$1"
