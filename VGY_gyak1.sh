#!/bin/bash

adatok=(12 9 15 11 7 13 16)

darab=${#adatok[@]}

echo "Ennyi napi hőmérsékleti adat van: $darab"

osszeg=0

for adat in "${adatok[@]}"
do
    osszeg=$((osszeg + adat))
done

echo "A hőmérsékletek összege: $osszeg."

atlag=$((osszeg / darab))

echo "Átlag: $atlag."

minimum=${adatok[0]}

for i in "${adatok[@]}"
do
    if [ "$i" -lt "$minimum" ]; then
        minimum=$i
    fi
done

echo "A legalacsonyabb hőmérséklet: $minimum"

maximum=${adatok[0]}

for i in "${adatok[@]}"
do
    if [ "$i" -gt "$maximum" ];
    then maximum=$i
    fi
done

echo "A legmagasabb hőmérséklet: $maximum"

hetfok=0

for i in "${adatok[@]}"
do
    if [ "$i" -eq 7 ]
    then
    hetfok=$((hetfok + 1))
    fi
done

echo "A 7 fokos érték $hetfok-szer szerepel."git