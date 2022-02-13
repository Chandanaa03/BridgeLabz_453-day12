RANDOM=$$
number=1
while [ $number -lt 11 ]
do
   arrv[$number]=$(($(($RANDOM%900))+100))
    ((number++))
done
n=11
 echo "Before sort:${arrv[*]}"
 for ((i=0; i<$number; i++))
 do
   for ((j=$i; j<$number; j++))
   do
     if [[ ${arrv[$i]} -gt ${arrv[$j]} ]]
     then
         temp=${arrv[$i]}
         arrv[$i]=${arrv[$j]}
         arrv[$j]=$temp
     fi
   done
done
 
echo "After sort:${arrv[*]}"
echo "second largest ${arrv[number-2]}"
echo "second smallest ${arrv[2]}"
