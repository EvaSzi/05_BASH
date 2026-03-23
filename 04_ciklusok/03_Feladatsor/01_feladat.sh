#!/bin/bash

fajlok=("jegyzet.pdf" "kep.png" "zene.mp3" "vizsga.pdf" "ikon.png" "adat.csv")

for fajl in "${fajlok[@]}"
do
    if [[ "$fajl" == *.pdf ]]
    then
        echo "$fajl - dokumentum"
    elif [[ "$fajl" == *.png ]]
    then
        echo "$fajl - kép"
    else
        echo "$fajl - egyéb fájl"
    fi
done