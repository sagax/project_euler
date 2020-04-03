# GNU bash, version 4.2.45
# GNU bash, version 4.3.33
# GNU bash, version 5.0.7

summ=0
for item in $(seq 0 999)
do
    if [[ $(($item % 3)) -eq 0 || $(($item % 5)) -eq 0 ]]
    then
        summ=$((summ + $item))
    fi
done

printf "$summ"
