#!/bin/bash


read -p "Enter temp: " temp

if [ $temp -lt 40 ]
then echo "It's cold outside"

elif [ $temp -ge 40 ] && [ $temp -lt 60 ]
then echo "It's cool outside"


elif [ $temp -ge 60 ] $$ [ $temp -lt 80 ]
then echo "Yay, it's finally warm"

elif [ $temp -ge 80 ]
then echo "It's hot"
fi
