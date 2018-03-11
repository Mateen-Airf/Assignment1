#!/bin/bash

`touch even.txt`
`touch odd.txt`
c=1
for i in `more -1 file.txt`
do
	x=$((c%2))
	if [ $x -eq 0 ]
	then
		echo $i 1>>even.txt
		c=`expr $c + 1`
	else
		echo $i 1>>odd.txt
		c=`expr $c + 1`
	fi
done

