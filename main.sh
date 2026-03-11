#!/bin/bash
#
echo "enter a number"

read num

echo "Entered number = $num "
if [[ $num == 10 ]]
then
	echo "sachin jersey"
elif [[ $num == 45 ]]
then 
	echo "Rohit jersey"
else
	echo "jersey not found"
fi

