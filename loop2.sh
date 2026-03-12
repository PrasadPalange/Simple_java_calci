
#!/bin/bash

a=1
totaleven=0
totalodd=0
echo "Enter the last number till want to check even numbers list : "
read -r num

while [[ $a -le $num ]]
do
    if [[ $((a % 2)) -eq 0 ]]; then
        echo "$a is even number"
        totaleven=$((totaleven + 1))
        b=$((b + 1))

    else
        echo "$a is odd number"
        totalodd=$((totalodd + 1))
        c=$((c + 1))
    fi
    a=$((a + 1))
done
echo "Total even numbers = $totaleven"
echo "Total odd numbers = $totalodd"

