#!/bin/bash

cd bash_feladat5_demo || exit

scripts=("backup.sh" "rotate.sh" "monitor.sh" "deploy.sh" "cleanup.sh")

for file in "${scripts[@]}"
do
    if [ ! -e "$file" ]
    then
        echo "$file - hiányzik"
    elif [[ -e "$file" && ! -x "$file" ]]
    then
        chmod +x "$file"
        echo "$file - jogosultság javítva"
    else
        echo "$file - rendben"
    fi
done