#!/bin/bash

#create while loop that keep asking user to input different words
#the loop should stop when user types "stop"


read -p "Enter a word. Type "stop" to exit. " input

while [ $input != "stop" ]
do
	echo "Try another word"
	read -p "Enter another word. Type "stop" to exit. " input
done

echo "You typed "stop". Loop is ended. "
