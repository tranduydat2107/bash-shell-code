#!/bin/bash

function printMenu () {
    echo "***** Welcome to Math Helper. This is option menu *****"
    echo "1. Slove quadratic equation"
    echo "2. Calculate circle are"
    echo "3. Check prime number"
    echo "4. Exit"
    echo "Please choose an option: "
}

function quadraticEquation () {
echo "Welcome to quadractice equation slover, quadratic equation has the type of ax^2 + bx + c = 0"
echo "Input a: "; read a
echo "Input b: "; read b
echo "Input c: "; read c
if [ $a -eq 0 -a $b -eq 0 -a $c -eq 0 ] # a=0 and b=0 and c=0
then
echo "Equation $a x^2 + $b x + $c = 0 has countless root"
elif [ $a -ne 0 ] 
then
 delta=$(echo "$b * $b - 4 * $a * $c" | bc)  # | bc duoc su dung khi tinh toan co kieu du lieu la so nguyen va so thuc
    if [ $delta -lt 0 ] #delta <= thi pt vo nghiem
    then
       echo "Equation $a x^2 + $b x + $c = 0 has no solution"
    elif [ $delta -eq 0 ] #delta = 0 thi pt co nghiem kep
    then
        x=$(echo "scale=2; -($b) / (2 * $a)" | bc)  # lay 2 chu so sau dau , vd: 3,12; 5,34; ......
        echo "Equation $a x^2 + $b x + $c = 0 has double solution x1 = x2 = $x"
    elif [ $delta -gt 0 ]
    then
       x1=$(echo "scale=4; (-($b) + sqrt($delta)) / (2 * $a)" | bc) # kieu du lieu float trong shell script duoc hien thi bang tu khoa scale
       x2=$(echo "scale=4; (-($b) - sqrt($delta)) / (2 * $a)" | bc) 
       echo "Test 2 solution"
       echo "Equation $a x^2 + $b x + $c = 0 has 2 solution x1 =$x1 and x2 = $x2"
    fi   
fi
}
 
function evaluateCircleArea () {
    echo "Welcome to circle area evaluator"
    echo "Please input the circle's radius(cm): "
    read radius
    echo "Your cirlce radius: $radius"
    area=$(echo "scale=4; ($radius * $radius * 3.14)" | bc)
    echo "Area of the circle has the radius of $radius is $area cm"

}

function isPrime () {
echo "Please input a positive number to check prime: "
read number
if [ $number -lt 0 ]
then
    return -1
else
   if [ $number -lt 2 ]
   then
      return -1
    elif [ $number -eq 2 ]
    then
        return 1  
    elif [ $number -gt 2 ]
    then
       for ((i=2; i<=($number -1); i++ ))
       do 
          flag=$(echo "scale=0; $number % $i" | bc)
          if [ $flag -eq 0 ]
          then
            return -1
          fi  
        done
        return 1  
    fi  
fi   
}


#main execute thread

printMenu
# x=$(echo " -(-1) * (-1)" | bc)
# echo $x
# res=$(echo "scale=0; sqrt($x)" | bc)
#echo $res
read choice
while [ $choice -ne 4 ]
do
case $choice in
    1)
    quadraticEquation  #perform calculate quadratic equation
    ;;
    2)
    evaluateCircleArea #perform calculate circle area
    ;;
    3)
    isPrime            #perform check a number is prime or not
    res=$?
    if [ $res -eq 1 ]
    then
        echo "Is a prime"
    else
       echo "Not a prime"
    fi   
    ;;
    4)
      echo "See you again!!"
      exit 0
    ;;  
    *)
      echo "Sorry, I don't understand"
    ;;  
esac
   printMenu
   read choice
done