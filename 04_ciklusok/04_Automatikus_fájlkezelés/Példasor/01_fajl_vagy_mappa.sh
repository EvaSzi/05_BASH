#!/bin/bash

if [ -f "jegyzet.txt" ]
then
    echo "A megadott elem egy fájl."
fi

if [ -d "dokumentumok" ]
then
    echo "A megadott elem egy könyvtár."
fi