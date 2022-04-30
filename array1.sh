a=" $(( (RANDOM%900) +100 )) "
b=" $(( (RANDOM%900) +100 )) "
c=" $(( (RANDOM%900) +100 )) "
d=" $(( (RANDOM%900) +100 )) "
e=" $(( (RANDOM%900) +100 )) "
f=" $(( (RANDOM%900) +100 )) "
g=" $(( (RANDOM%900) +100 )) "
h=" $(( (RANDOM%900) +100 )) "
i=" $(( (RANDOM%900) +100 )) "
j=" $(( (RANDOM%900) +100 )) "

array=($a $b $c $d $e $f $g $h $i $j)

echo ${array[@]}

largest=${array[0]}
SecondLargest='unset'

for((i=1; i<${#array[@]}; i++))
do
        if [[ ${array[i]} > $largest ]]
        then
                SecondLargest=$largest
                largest=${array[i]}
        elif (( ${array[i]} != $largest )) && { [[ "$SecondLargest" = "unset" ]] || [[ ${array[i]} > $SecondLargest ]]; }
        then
                SecondLargest=${array[i]}
        fi
done
echo "Second Largest Number is $SecondLargest"

Smallest=${array[0]}
SecondSmallest='unset'

for((i=1; i<${#array[@]}; i++))
do
        if [[ ${array[i]} < $Smallest ]]
        then
                SecondSmallest=$Smallest
                Smallest=${array[i]}
        elif (( ${array[i]} != $Smallest )) && { [[ "$SecondSmallest" = "unset" ]] || [[ ${array[i]} < $SecondSmallest ]]; }
        then
                SecondSmallest=${array[i]}
        fi
done
echo "Second Smallest Number is $SecondSmallest"

