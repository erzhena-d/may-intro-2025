#!/bin/bash

read -p "Enter a decimal number: " number

binary=$(echo "obase=2; $number" | bc)

echo "Your number in binary is: " $binary
