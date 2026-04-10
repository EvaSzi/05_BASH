#!/bin/bash

cd bash_feladat4_demo || exit

users=("anna" "bela" "dani" "emma")

for user in "${users[@]}"
do
    path="felhasznalok/$user"

    if [ ! -d "$path" ]
    then
        mkdir -p "$path/Dokumentumok"
        mkdir -p "$path/Letöltések"
        mkdir -p "$path/Munka"
        echo "$user - home mappa és 3 almappa létrehozva"
    else
        pieces=0

        if [ ! -d "$path/Dokumentumok" ]
        then
            mkdir -p "$path/Dokumentumok"
            pieces=$((pieces + 1))
        fi

        if [ ! -d "$path/Letöltések" ]
        then
            mkdir -p "$path/Letöltések"
            pieces=$((pieces + 1))
        fi

        if [ ! -d "$path/Munka" ]
        then
            mkdir -p "$path/Munka"
            pieces=$((pieces + 1))
        fi

        if [ $pieces -eq 0 ]
        then
            echo "$user - rendben"
        else
            echo "$user - $pieces mappa létrehozva"
        fi
    fi
done