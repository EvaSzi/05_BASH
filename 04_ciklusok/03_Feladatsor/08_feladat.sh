#!/bin/bash

rendelesek=(450 1200 7600 980 3200 5100)

for szam in "${rendelesek[@]}"
do
    if [ $szam -gt 5000 ]
    then
        echo "$szam - nagy rendelés"
    elif [ $szam -gt 1000 ]
    then
        echo "$szam - normál"
    else
        echo "$szam - sürgős"
    fi
done