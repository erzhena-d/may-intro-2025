#!/bin/bash

while true
do
	read -s -p "Enter password: " pass1
	read -s -p "Re-enter your password: " pass2

	if [ $pass1 == $pass2 ]
	then
		echo "Password was set"
		break
	else
		echo "Passwords don't match, try again. "

	fi

done


