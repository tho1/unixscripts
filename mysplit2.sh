#!/bin/bash
#This field split the first field into multiple columns

cnt=1

#while read line
#do

line="AR-120:AB-123"

#id=`echo ${line} | awk -F "," '{ print $1 }'`

#fields=`echo ${line} | awk -F "," '{ print $2 }'`

#echo $id 
#echo $fields

for i in `echo ${line} | tr ':' '\n'`
do
    cnt=cnt+1
    echo $cnt,$i
    
done

#done


