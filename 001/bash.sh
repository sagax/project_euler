# GNU bash, version 4.2.45(1)-release (x86_64-suse-linux-gnu)

summ=0
for item in $(seq 0 999)
do
    if [[ $(($item % 3)) -eq 0 || $(($item % 5)) -eq 0 ]]
    then
        summ=$((summ + $item))
    fi
done

echo $summ
