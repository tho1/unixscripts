#!/bin/bash
#This field split the second fields into multiple columns

while read line
do

#line="VD-001,clf; gates; etc"

id=`echo ${line} | awk -F "," '{ print $1 }'`
fields=`echo ${line} | awk -F "," '{ print $2 }'`

#echo $id 
#echo $fields

for i in `echo ${fields} | tr ';' '\n'`
do
    echo $id,$i
    
done

done
