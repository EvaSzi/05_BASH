#!/bin/bash

mkdir -p archivum

for fajl in *.txt
do
    cp "$fajl" archivum/
done

echo "Az archiválás befejeződött."