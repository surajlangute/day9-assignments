#!/bin/bash -x

fulltime=1
parttime=2
emprateperhr=50
randomcheck=$((RANDOM%3))

case $randomcheck in
			$fulltime )
				emphrs=8
			;;
			$parttime )
				emphrs=4
			;;
			*)
				emphrs=0
			;;
esac

salary=$(($emphrs*$emprateperhr))
