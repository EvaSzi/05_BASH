#!/bin/bash

cd bash_feladat8_demo || exit

while read line
do
    if [ -d "$line" ]
    then
        rmdir "$line" 2>/dev/null

        if [ $? -eq 0 ]
        then
            echo "$line - üres mappa törölve"
        else
            rm -r "$line"
            echo "$line - nem üres mappa törölve"
        fi
    else
        echo "$line - hiányzik"
    fi
done < torlendo_mappak.txt