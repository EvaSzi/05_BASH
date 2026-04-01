#!/bin/bash

echo "Add meg a mentendő fájl nevét:"
read fajlnev

if [ -f "$fajlnev" ]
then
    mkdir -p mentesek
    cp "$fajlnev" "mentesek/${fajlnev}_$(date +%Y%m%d_%H%M%S)"
    echo "A mentés elkészült."
else
    echo "A megadott fájl nem létezik."
fi