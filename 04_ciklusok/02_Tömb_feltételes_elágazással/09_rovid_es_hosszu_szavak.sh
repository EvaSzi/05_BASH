#!/bin/bash

szavak=("fa" "asztal" "ég" "szekrény")

for szo in "${szavak[@]}"
do
    if [ ${#szo} -le 3 ]
    then
        echo "$szo - rövid szó"
    else
        echo "$szo - hosszú szó"
    fi
done