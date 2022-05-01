num=0

for ((i-1; i<=100; i++))
do
        if ((i%11==0))
        then
                array[num++]=$i
                ((i += 11))
        else
                ((i++))
        fi
done

echo "${array[@]}"
