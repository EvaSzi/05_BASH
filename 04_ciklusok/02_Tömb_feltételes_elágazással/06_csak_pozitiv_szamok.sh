#!/bin/bash

szamok=(-3 7 0 12 -1 5)

for szam in "${szamok[@]}"
do
    if [ $szam -gt 0 ]
    then
        echo $szam
    fi
done