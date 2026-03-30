#!/bin/bash

echo "Biztosan törölni akarod a kuka.txt fájlt? (i/n)"
read valasz

if [ "$valasz" = "i" ]
then
    rm kuka.txt
    echo "Törölve."
else
    echo "A törlés megszakítva."
fi