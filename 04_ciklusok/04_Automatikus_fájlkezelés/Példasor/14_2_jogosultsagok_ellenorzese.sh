#!/bin/bash

if [ -w "adatok.txt" ]
then
    echo "A fájl írható."
else
    echo "A fájl nem írható."
fi