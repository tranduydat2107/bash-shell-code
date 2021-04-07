printMenu () {
    echo "Welcome to Math Helper. This is option menu"
    echo "1. Slove quadratic equation"
    echo "2. Calculate circle are"
    echo "3. Check prime number"
    echo "Please choose an option: "
}

quadraticEquation () {
echo "Welcome to quadractice equation slover, quadratic equation has the type of ax^2 + bx + c = 0"
echo "Input a: "; read a
echo "Input b: "; read b
echo "Input c: "; read c
if [ $a -eq 0 -a $b -eq 0 -a $c -eq 0 ]
then
echo "Equation $a x^2 + $b x + $c = 0 has countless root"
elif [ $a -ne 0 ] 
then
 let "delta=(($b * $b) - (4 * $a * $c))"
    if [ $delta -lt 0 ]
    then
       echo "Equation $a x^2 + $b x + $c = 0 has no solution"
    elif [ $delta -eq 0 ]
    then
        x=$((-$b / 2 * $a))
        echo "Equation $a x^2 + $b x + $c = 0 has double solution x1 = x2 = $x"
    else
       let "x1=(-$b - sqrt($delta)) / (2 * $a)"
       let "x1=(-$b + sqrt($delta)) / (2 * $a)"
       echo "Equation $a x^2 + $b x + $c = 0 has 2 solution x1 =$x1 and x2 = $x2"
    fi   
fi
}

evaluateCircleArea () {
    echo "Welcome to circle area evaluator"
    echo "Please input the circle's radius: "
    read radius
    area=$(($radius * $radius * 3,14))
    echo "Area of the circle has the radius of $radius is $area"

}
#main execute
printMenu
# let "x=((4^2) - (4 * 4 * 1))"
# echo $x
read choice
case $choice in
    1)
    quadraticEquation
    ;;
    2)
    evaluateCircleArea
    ;;
    3)
    echo "three"
esac

