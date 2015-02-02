#!/bin/bash



x=`awk -F':' '{ sum += $3 } END { print sum }' /etc/passwd`
y=`awk -F':' '{ sum += $4 } END { print sum }' /etc/passwd`

echo $x
echo $y

if [ "$x" < "$y" ];then
	echo "Sum of GID is greater"
else
	echo "Sum of UID is greater"
fi
