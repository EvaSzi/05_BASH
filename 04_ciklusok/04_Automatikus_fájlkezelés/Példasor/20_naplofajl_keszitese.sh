#!/bin/bash

echo "A script indulása: $(date)" >> naplo.txt
echo "Ellenőrzés indul." >> naplo.txt

if [ -f "adatok.txt" ]
then
    echo  "Az adatok.txt megtalálható." >> naplo.txt
else
    echo "Az adatok.txt hiányzik." >> naplo.txt
fi 

echo "A script vége: $(date)" >> naplo.txt