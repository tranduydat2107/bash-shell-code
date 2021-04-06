#!/bin/bash
echo "What is your name?"
read name   # read use to read input
echo "Hello $name hope you're doing well"
echo "I will create a file by the name $name"
touch "${name}.txt"
