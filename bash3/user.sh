#!/bin/bash

read -p "Type 1 or 2: " number

if [ $number -eq 1 ]
then 
	sudo yum install git tree httpd -y > /dev/null

elif [ $number -eq 2 ] 
then 
	touch hello world


else 
	echo "Wrong number. Provide 1 or 2"

fi
~        
