#!/bin/bash


users() { 
for i in emma mia chloe zoe
do
        sudo useradd $i
done
}


folders() {
	for x in day week month year
	do
		mkdir $x
	done
}

users
folders
