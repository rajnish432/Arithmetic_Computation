#! /bin/bash -x

read -p "Enter three Numbers: " a b c
echo "$a $b $c";
operation1=`echo "scale=2;($a+($b*$c))" | bc`;
echo "$operation1"
