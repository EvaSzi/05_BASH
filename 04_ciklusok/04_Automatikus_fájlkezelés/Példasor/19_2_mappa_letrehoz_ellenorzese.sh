#!/bin/bash

mkdir ujmappa

if [ $? -eq 0 ]
then
    echo "A mappa létrejött."
else
    echo "Nem sikerült létrehozni a mappát."
fi