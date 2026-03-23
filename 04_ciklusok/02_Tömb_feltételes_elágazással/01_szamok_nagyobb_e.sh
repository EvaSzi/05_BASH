#!/bin/bash

szamok=(5 12 8 20)

for szam in "${szamok[@]}"
do
    if [ $szam -gt 10 ]
    then
        echo "$szam nagyobb mint 10"
    fi
done