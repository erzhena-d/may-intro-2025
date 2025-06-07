#!/bin/bash

#script asking user to input number and then using for loop print multiplication table from 1 to 10

read -p "Enter any number: " num
echo "Multiplication table from 1 to 10 for $num" 

for i in {1..10}
do
	echo $((num * i))
done	
