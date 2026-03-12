
#!/bin/bash

a=1
echo "Enter the last number till want to check even numbers list : "
read -r num

while [[ $a -le $num ]]
do
    if [[ $((a % 2)) -eq 0 ]]; then
        echo "$a is even number"
    else
        echo "$a is odd number"
    fi
    a=$((a + 1))

done
