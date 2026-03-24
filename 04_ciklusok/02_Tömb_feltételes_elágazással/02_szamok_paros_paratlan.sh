#!/bin/bash

szamok=(3 4 7 10)

for szam in "${szamok[@]}"
do
    if [ $((szam % 2)) -eq 0 ]
    then
        echo "$szam páros"
    else
        echo "$szam páratlan"
    fi
done