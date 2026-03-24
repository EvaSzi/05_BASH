#!/bin/bash

allatok=("kutya" "macska" "egér" "nyúl")

for allat in "${allatok[@]}"
do
    if [ "$allat" != "egér" ]
    then
        echo $allat
    fi
done