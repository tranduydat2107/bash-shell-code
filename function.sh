# de khai bao ham trong shell chung ta dung cu phanp
#    function_name(){
#      local variable and code
#      return (neu co)
#     }
# neu muon truyen tham so thi su dung ten ham luon

#!/bin/bash
sum () {
    let "a=$first_number+$second_number"
    return $a
}

div () {
    let "a=$first_number-$second_number"
    return $a
}

mul () {
    let "a=$first_number*$second_number"
    return $a
}

divide () {
    if [ $second_number -eq 0 ]
    then
    echo "Invalid divider"
    return -1
    else
    let "a=$first_number/$second_number"
    fi
    return $a
}
echo "Enter first number: "
read first_number
echo "Enter second number: "
read second_number
# sum $first_number $second_number
# ret=$?
# echo $ret
echo "**** What do you want to do with these number ??? ****"
echo "1. ADD"
echo "2. SUBTRACT"
echo "3. MULTIPLY"
echo "3. DEVIDE"
echo "Please choose one of the following option:"
read choice
case $choice in
     1)
     sum $first_number $second_number
     ret=$?
     echo "Result: $ret"
     ;;
     2)
     div $first_number $second_number
     ret=$?
     echo "Result: $ret"
     ;;
     3)
     mul $first_number $second_number
     ret=$?
     echo "Result: $ret"
     ;;
     4)
     divide $first_number $second_number
     ret=$?
     echo "Result: $ret"
     ;; 
esac




