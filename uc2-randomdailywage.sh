#!/bin/bash -x

present=1
randomcheck=$((RANDOM%2))

if [ $present == $randomcheck ]
then
	emphrs=8
	earning=20
	salary=$(($emphrs*earning))
	echo $salary
else
	salary=0
	echo $salary
fi
