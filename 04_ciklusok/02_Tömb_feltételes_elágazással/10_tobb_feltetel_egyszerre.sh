#!/bin/bash

szamok=(2 7 15 22 19 4)

for szam in "${szamok[@]}"
do
    if [ $szam -gt 5 ] && [ $szam -lt 20 ]
    then
        echo $szam
    fi
done