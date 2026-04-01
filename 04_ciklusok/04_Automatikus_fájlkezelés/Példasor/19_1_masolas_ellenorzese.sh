#!/bin/bash

cp forras.txt cel.txt

if [ $? -eq 0 ]
then
    echo "A másolás sikeres volt."
else
    echo "Hiba történt a másolás során."
fi