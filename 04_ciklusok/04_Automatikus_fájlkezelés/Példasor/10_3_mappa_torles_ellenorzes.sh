#!/bin/bash

if [ -d "regi mappa" ]
then
    rm -r regi_mappa
    echo "A könyvtár törölve."
else
    echo "A könyvtár nem található."
fi