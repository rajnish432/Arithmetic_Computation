#! /bin/bash

read -p "Enter three Numbers: " a b c
declare -A Operations 
echo "$a $b $c";
Operations["operation1"]="`echo "scale=2;($a+($b*$c))" | bc`"
Operations["operation2"]="`echo "scale=2;(($a*$b)+$c)" | bc`"
Operations["operation3"]="`echo "scale=2;($c+($a/$b))" | bc`"
Operations["operation4"]="`echo "scale=2;(($a%$b)+$c)" | bc`"
printf  "Value of opr1: ${Operations[operation1]}\nValue of opr2: ${Operations[operation2]}\n""Value of opr3: ${Operations[operation3]}\n""Value of opr4: ${Operations[operation4]}\n";
