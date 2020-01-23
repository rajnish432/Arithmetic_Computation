#! /bin/bash

read -p "Enter three Numbers: " a b c
echo "$a $b $c";
operation1=`echo "scale=2;($a+($b*$c))" | bc`;
operation2=`echo "scale=2;(($a*$b)+$c)" | bc`;
printf "Value of opr1: $operation1\nValue of opr2: $operation2\n"
