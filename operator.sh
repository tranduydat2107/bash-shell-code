#!/bin/bash
echo "Enter a number: "
read first_number
echo "Enter second number: "
read second_number
let "sum=$first_number+$second_number"
echo "The sum of $first_number and $second_number is $sum"
let "mul=$first_number * $second_number"
echo "The multiply of $first_number and $second_number is $mul"


