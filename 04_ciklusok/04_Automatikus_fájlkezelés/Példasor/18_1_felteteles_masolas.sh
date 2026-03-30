#!/bin/bash

if [ -f "masolat.txt" ]
then
    echo "A célfájl már létezik, nem másolok."
else
    cp forras.txt masolat.txt
    echo "A másolás sikeres."
fi