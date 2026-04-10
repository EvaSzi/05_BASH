#!/bin/bash

cd bash_feladat6_demo || exit

files=("app.conf" "users.db" "tokens.env" "service.ini" "naplo.log")
date=$(date +%Y%m%d)

for file in "${files[@]}"
do
    if [ -f "$file" ]
    then
        cp "$file" "mentesek/${file}_$date"
        echo "$file - mentve"
    else
        echo "$file - nem található"
    fi

    if [ ! -w "mentesek" ]
    then
        echo "A mentesek mappa nem írható."
    fi
done