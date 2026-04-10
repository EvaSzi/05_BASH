#!/bin/bash

cd bash_feladat1_demo || exit

fajlok=("nginx.conf" "app.env" "db.conf" "backup.conf")

for fajl in "${fajlok[@]}"
do
    if [ -r "$fajl" ]
    then
        echo "$fajl - rendben"
    elif [ -e "$fajl" ]
    then
        echo "$fajl - nem olvasható"
    else
        echo "$fajl - hiányzik"
    fi
done