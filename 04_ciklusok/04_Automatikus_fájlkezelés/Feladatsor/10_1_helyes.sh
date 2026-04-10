#!/bin/bash

cd bash_feladat10_demo || exit

echo "Aktuális mappa: $(basename "$(pwd)")"
echo "Add meg a visszaállítandó mentés nevét:"
read filename

if [ -f "mentesek/$filename" ]
then
    mkdir -p visszaallitva
    cp "mentesek/$filename" "visszaallitva/$filename"

    if [ $? -eq 0 ]
    then 
        echo "$filename - visszaállítás sikeres"
    else
        echo "$filename - visszaállítás sikertelen"
    fi
else
    echo "$filename - a mentés nem található"
fi