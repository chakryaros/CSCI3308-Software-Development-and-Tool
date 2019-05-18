#!/bin/bash
#Muntaha Pasha
#Chakrya Ros
 
awk '{  printf("%d ", $1);
		printf("[%d] ", (($4+$5+$6)/3)); 
        printf("%s, ", $3);
        printf("%s\n", $2);
        
 }' $1 | sort -k3,4