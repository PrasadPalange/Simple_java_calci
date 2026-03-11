#!/bin/bash

for ((num=1 ; num<=13 ; num++))
do
	echo "This is for number = $num"

done

echo "creating multiple folders using loop"
# while running prog need to enter values like first folder name,start count and end count for folders
for (( num=$2 ; num<=$3 ; num++ ))
do
	mkdir "$1$num.txt"

done
