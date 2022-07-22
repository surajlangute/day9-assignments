#!/bin/bash -x

fulltime=1
parttime=2
emprateperhr=50
randomcheck=$((RANDOM%3))

if (($fulltime == $randomcheck))
then
	emphrs=8
elif (($parttime == $randomcheck))
then
	emphrs=4
else
	emphrs=0
fi

salary=$(($emphrs*$emprateperhr))
