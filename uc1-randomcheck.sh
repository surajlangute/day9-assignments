#!/bin/bash -x

present=1
randomcheck=$((RANDOM%2))

#if [ $present == $randomcheck ]
if (( $present == $randomcheck ))
then
	echo "employee is present"
else
	echo "employee is absent"
fi
