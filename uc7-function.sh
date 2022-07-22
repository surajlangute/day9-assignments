#!/bin/bash -x

fulltime=1
parttime=2
emprateperhr=50
maxrateinmonth=100
numofworkingdays=20

totalemphr=0
totalworkingdays=0

function getworkinghours()
{
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

}

while (( $totalemphr < $maxrateinmonth && 
	$totalworkingdays < $numofworkingdays ))

do 
	((totalworkingdays++))
	randomcheck=$((RANDOM%3))
	getworkinghours $randomcheck
	totalemphr=$(($totalemphr+$emphrs))
done

totalsalary=$(($totalemphr*$emprateperhr))
