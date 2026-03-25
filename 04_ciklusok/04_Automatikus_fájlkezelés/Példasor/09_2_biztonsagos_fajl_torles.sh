#!/bin/bash

if [ -f "test.txt" ]
then
    rm test.txt
    echo "A fájl törölve."
else
    echo "Nincs ilyen fájl."
fi