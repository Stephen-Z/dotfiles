#!/usr/bin/sh 
origin=`nvidia-settings -q gpucoretemp -t`
#echo $origin
#IFS=$'\n'
for i in $origin
do
	echo $i
	break
done
