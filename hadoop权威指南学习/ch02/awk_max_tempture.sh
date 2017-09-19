#!/bin/bash 
# echo -n  不换行输出
for file in  `ls | grep 19`
do
	echo  -n $file":"
	cat  $file | \
	 awk '{ temp = substr($0, 88, 5) + 0;
           q = substr($0, 93, 1);
           if (temp !=9999 && q ~ /[01459]/ && temp > max) max = temp }
         END { print max }'
done 
