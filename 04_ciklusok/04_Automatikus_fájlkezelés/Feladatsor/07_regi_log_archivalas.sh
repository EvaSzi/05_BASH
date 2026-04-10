#!/bin/bash

cd bash_feladat7_demo || exit

files=("current.log" "error.log" "db.old" "report.txt" "image.png" "notes.md")

for file in "${files[@]}"
do
    if [[ "$file" == *.log ]] || [[ "$file" == *.old ]]
    then
        mv "$file" archivum/"archiv_${file}"
        echo "$file - archiválva"
    else
        echo "$file - meghagyva"
    fi
done