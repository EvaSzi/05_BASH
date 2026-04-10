#!/bin/bash

cd bash_feladat10_demo

echo "Aktuális mappa:"
pwd

echo "Add meg a visszaállítandó mentés nevét:"
read filename

if [[ -f "mentesek/${filename}" ]]
then
    mkdir visszaallitva
    cp "$filename" visszaallitva/

    if [ $? -eq 0 ]
    then
        echo "$filename - visszaállítás sikeres"
    else
        echo "$filename - visszaállítás sikertelen"
    fi
fi