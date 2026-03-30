#!/bin/bash

echo "Adj meg egy fájlnevet: "
read fajlnev

if [ -f "$fajlnev" ]
then
    echo "A fájl létezik."
else
    echo "A fájl nem létezett, de most létrehoztam."
    touch "$fajlnev.txt"
fi