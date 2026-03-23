#!/bin/bash

kg=(1 4 12 2 9 15)

for meret in "${kg[@]}"
do
    if [ $meret -gt 10 ]
    then
        echo "$meret kg - nehéz csomag"
    elif [ $meret -le 3 ]
    then
        echo "$meret kg - közepes csomag"
    else
        echo "$meret kg - könnyű csomag"
    fi
done