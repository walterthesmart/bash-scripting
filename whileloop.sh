#!/bin/bash

# WHILE LOOP


#while [condition]
#do
#	Command.....
#done

# NUM=1

#while [ $NUM -le 10 ]
# do
#	echo $NUM
#	let NUM++
# done

HYP="-"
NUM=1
cat name.txt | 
while read line
do 
	echo $NUM.$line $HYP
	let NUM++
done
