#!/bin/bash

if [ -r "adatok.txt" ]
then
    echo "A fájl olvasható."
else
    echo "A fájl nem olvasható."
fi