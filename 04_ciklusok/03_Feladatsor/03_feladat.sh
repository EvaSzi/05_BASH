#!/bin/bash

szamtomb=(0 3 12 1 0 8)

for szam in "${szamtomb[@]}"
do
if [ $szam -eq 0 ]
then
    echo "$szam - megtelt"
elif [ $szam -ge 1 ] && [ $szam -le 5 ]
then
    echo "$szam - majdnem tele"
else
    echo "$szam - van még hely"
fi
done