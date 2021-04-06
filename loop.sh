#!/bin/bash
#in ra man hinh nhung so nhap vao su dung vong lap for
echo "How many number do you want to print out:"
read index
for ((i=1; i<=$index; i++))
do
  echo "Looping ... i is set to $i"
done
#tinh 5 giai thua
sum=1
for number in {1..5}
do
  sum=$(($sum * $number))
done
echo "5 giai thua bang $sum"
#tinh giai thua cua 5 dung vong lap while
mul=1
i=1
while [ $i -le 5 ]
do
  mul=$(($mul * $i))
  ((i++))
done
echo "5 giai thua tinh bang vong lap for la $mul"  
 
