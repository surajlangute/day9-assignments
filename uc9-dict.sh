#!/bin/bash -x

parttime=1
fulltime=2
maxrateinmonth=100
emprateperhr=50
numofworkingdays=20

totalemphr=0
totalworkingdays=0

function getworkhrs()
{
	case $randomcheck in 
				$parttime)
					emphrs=4
				;;
				$fulltime)
					emphrs=8
				;;
				*)
					emphrs=0
				;;
	esac
}

function getempwage()
{
	echo $(($totalemphr*$emprateperhr))
}

while [[ $totalemphr -lt $maxrateinmonth &&
	$totalworkingdays -lt $numofworkingdays ]]
do
	((totalworkingdays++))
	randomcheck=$((RANDOM%3))
	getworkhrs $randomcheck
	totalemphr=$(($totalemphr+$emphrs))
	dailywages["$totalworkingdays"]=$(($emphrs*$emprateperhr))
done

totalsalary=$(getempwage)

	echo ${dailywages[@]}                # (dailywages)

	echo ${!dailywages[@]}               # (!: extract days)
	echo ${#dailywages[@]}	             # (#: total count)

