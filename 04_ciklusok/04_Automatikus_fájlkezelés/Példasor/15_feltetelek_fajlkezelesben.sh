#!/bin/bash

if [ -f "lista.txt" ]
then
    echo "A fájl már létezik, tartalma:"
    cat lista.txt
else
    echo "A fájl nem lézetett, most létrehozom."
    touch lista.txt
fi