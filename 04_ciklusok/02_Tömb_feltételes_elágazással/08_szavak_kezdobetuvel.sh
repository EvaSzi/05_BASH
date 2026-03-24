#!/bin/bash

szavak=("kutya" "alma" "körte" "barack" "kenyér")

for szo in "${szavak[@]}"
do
    if [[ $szo == k* ]]
    then
        echo $szo
    fi
done