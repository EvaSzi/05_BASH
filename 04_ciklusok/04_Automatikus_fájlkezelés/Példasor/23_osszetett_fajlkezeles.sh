#!/bin/bash

echo "Adj meg egy fájlnevet:"
read fajlnev

if [ -f "$fajlnev" ]
then
    echo "Ez a fájl már létezik."
    echo "Tartalma:"
    cat "$fajlnev"
else
    echo "Ez a fájl még nem létezik, tehát létrehozom."
    touch "$fajlnev"
    echo "Ez egy új fájl." > "$fajlnev"
    echo "A fájl létrejött és kapott kezdő tartalmat is."
fi
