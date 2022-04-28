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

sortedarray=$(printf '%s\n' "${array[@]}" | sort -u)
echo $sortedarray

secondlargest=$(printf '%s\n' "${array[@]}" | sort -u | tail -2 | head -1  )
echo "$secondlargest is the 2nd largest number"

secondsmallest=$(printf '%s\n' "${array[@]}" | sort -u | head -2 | tail -1 )
echo "$secondsmallest is the 2nd smallest number"
