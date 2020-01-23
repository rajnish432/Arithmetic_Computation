#! /bin/bash

read -p "Enter three Numbers: " a b c
echo "$a $b $c";
operation1=`echo "scale=2;($a+($b*$c))" | bc`;
operation2=`echo "scale=2;(($a*$b)+$c)" | bc`;
operation3=`echo "scale=2;($c+($a+$b))" | bc`;
operation4=`echo "scale=2;(($a%$b)+$c)" | bc`;
printf "Value of opr1: $operation1\nValue of opr2: $operation2\nValue of opr3: $operation3\nValue of opr4: $operation4\n"
