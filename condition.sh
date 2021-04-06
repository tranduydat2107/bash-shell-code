#!/bin/bash

# if condition statement 

echo "Enter you year of birth: "
read yob
if [ $yob -le 0 -o $yob -gt 2021 ] #-o equal to || (or operator) in others language
then
echo "Invalid year of birth"
# elif [ $yob -ge 2021 ]
# then
# echo "You have not been born yet"
else
age=$((2021 - $yob))
echo "You are currently $age year(s) old"
fi      # if condition statement 

# case ... esac condition statement

echo "5 Starts Restaurant's Menu:"
echo "1. Peeking Duck"
echo "2. Dumpling"
echo "3. Hamburger"
echo "Please choose an dish: "
read choice
case $choice in
    1)
       echo "Your choice is peeking duck"
       ;;
    2)
       echo "You have choose Dumpling"
       ;;
    3)
       echo "Hamburger is a great choice"
       ;;
    *)
       echo "Sorry, I do not understand"
       ;;
esac  