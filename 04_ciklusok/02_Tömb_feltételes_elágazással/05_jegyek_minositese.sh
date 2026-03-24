#!/bin/bash

jegyek=(5 4 3 2 1)

for jegy in "${jegyek[@]}"
do
    if [ $jegy -eq 5 ]
    then
        echo "$jegy - jeles"
    elif [ $jegy -eq 4 ]
    then
        echo "$jegy - jó"
    elif [ $jegy -eq 3 ]
    then
        echo "$jegy - közepes"
    elif [ $jegy -eq 2 ]
    then
        echo "$jegy - elégséges"
    else
        echo "$jegy - elégtelen"
    fi
done