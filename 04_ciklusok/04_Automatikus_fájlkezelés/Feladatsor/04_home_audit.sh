#!/bin/bash

cd bash_feladat4_demo/felhasznalok || exit

usernames=("anna" "bela" "dani" "emma")
dirs=("Dokumentumok" "Letöltések" "Munka")

for user in "${usernames[@]}"
do
    if [ ! -d "$user" ]
    then
        mkdir "$dirs"
        echo "$user - home mappa és 3 almappa létrehozva"
        
        for dir in "${dirs[@]}"
        do
            if [[ "$dir" == "Dokumentumok" ]]
            then
                echo "$user - 2 mappa létrehozva"
                mkdir -p "$user"/Letöltések
                mkdir -p "$user"/Munka
            elif [[ "$dir" == "Letöltések" ]]
            then
                echo "$user - 2 mappa létrehozva"
                mkdir -p "$user"/Dokumentumok
                mkdir -p "$user"/Munka
            elif [[ "$dir" == "Munka" ]]
            then
                echo "$user - 2 mappa létrehozva"
                mkdir -p "$user"/Dokumentumok
                mkdir -p "$user"/Letöltések
            elif [[ "$dir" == "Munka" && "Dokumentumok" ]]
            then
                echo "$user - 1 mappa létrehozva"
                mkdir -p "$user"/Letöltések
            elif [[ "$dir" == "Munka" && "Letöltések" ]]
            then
                echo "$user - 1 mappa létrehozva"
                mkdir -p "$user"/Dokumentumok
            elif [[ "$dir" == "Dokumentumok" && "Letöltések" ]]
            then
                echo "$user - 1 mappa létrehozva"
                mkdir -p "$user"/Munka
            else
                echo "$user - rendben"
            fi
        done
    fi
done