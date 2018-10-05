#!/usr/bin/sh 
origin=`nvidia-settings -q GPUUtilization -t`
#echo $origin
#IFS=$'\n'
for i in $origin
do
	#echo $i
	IFS=$'='
	echo "$i"|cut -d '=' -f 2|cut -d ',' -f 1
	break
done
