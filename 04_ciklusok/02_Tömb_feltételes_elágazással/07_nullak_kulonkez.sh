#!/bin/bash

ertekek=(4 0 9 0 2)

for ertek in "${ertekek[@]}"
do
    if [ $ertek -eq 0 ]
    then
        echo "Nulla"
    else
        echo "$ertek - nem nulla"
    fi
done