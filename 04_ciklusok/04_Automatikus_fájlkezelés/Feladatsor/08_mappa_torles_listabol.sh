#!/bin/bash

cd bash_feladat8_demo || exit

while read sor
do
    if [ ! -d "$sor" ]
    then
        echo "$sor - hiányzik"
    fi

    if [ -d "$sor" ]
    then
        rmdir "$sor"
        echo "$sor - üres mappa törölve"
    else
        rm -r "$sor"
        echo "$sor - nem üres mappa törölve"
done < torlendo_mappak.txt