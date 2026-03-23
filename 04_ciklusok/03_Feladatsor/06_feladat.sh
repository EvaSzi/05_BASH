#!/bin/bash

pontszam=(95 72 43 88 50 27)

for pont in "${pontszam[@]}"
do
    if [ $pont -ge 90 ]
    then
        echo "$pont pont - kiváló"
    elif [ $pont -ge 50 ]
    then
        echo "$pont pont - megfelelt"
    else
        echo "$pont pont - nem felelt meg"
    fi
done