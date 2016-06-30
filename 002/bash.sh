# GNU bash, version 4.2.45(1)-release (x86_64-suse-linux-gnu)

summ=0
a=0
b=1
c=0

while [[ $c -lt 4000000 ]]
do
    c=$((a + b))
    a=$b
    b=$c
    if [[ $((c % 2)) -eq 0 ]]
    then
        summ=$((summ + $c))
    fi
done

printf "$summ"
