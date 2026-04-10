#!/bin/bash

cd bash_feladat2_demo || exit

mappak=("app_naplok" "web_naplok" "db_naplok" "mail_naplok")

for mappa in "${mappak[@]}"
do
    if [ ! -d "$mappa" ]
    then
        echo "$mappa - mappa hiányzik"
    else
        for fajl in "$mappa"/*
        do
            if [ -f "$fajl" ]
            then
                fajlnev=$(basename "$fajl")
                
                if [[ "$fajlnev" == *.log ]]
                then
                    cp "$fajl" "hibakereses/${mappa}_$fajlnev"
                    echo "$mappa/$fajlnev - másolva"
                fi
            fi
        done
    fi
done