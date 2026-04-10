#!/bin/bash

cd bash_feladat3_demo || exit

for fajl in *
do
    if [ -f "$fajl" ]
    then
        if [[ "$fajl" == *.tmp ]] || [[ "$fajl" == *.cache ]] || [[ "$fajl" == *.bak ]]
        then
            rm "$fajl"
            echo "$fajl - törölve"
        else
            echo "$fajl - megtartva"
        fi
    fi
done