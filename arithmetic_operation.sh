#! /bin/bash -x 

read -p "Enter three Numbers: " a b c
declare -A Operations 
echo "$a $b $c";

function dictionary_to_array()
{
	for (( i=0; i<4; i++ ))
	do
	arr[i]=${Operations[operation$((i+1))]}
	done
}

function descending_Sort()
{
for (( i=0; i<$length; i++ ))
do
   for (( j=i+1; j<=$length; j++))
   do
      if [[ ${arr[i]%%.*} -lt ${arr[j]%%.*} ]]
      then
      temp=${arr[i]};
      arr[i]=${arr[j]};
      arr[j]=$temp;
      fi
   done
done
}

Operations["operation1"]="`echo "scale=2;($a+$b*$c)" | bc`"
Operations["operation2"]="`echo "scale=2;($a*$b+$c)" | bc`"
Operations["operation3"]="`echo "scale=2;($c+$a/$b)" | bc`"
Operations["operation4"]="`echo "scale=2;($a%$b+$c)" | bc`"
dictionary_to_array 
length=${#arr[@]}
descending_Sort
echo "Array in Descending order:"
printf "value of opr1: ${arr[0]}\nvalue of opr2: ${arr[1]}\nvalue of opr3: ${arr[2]}\nvalue of opr4: ${arr[3]}\n"
