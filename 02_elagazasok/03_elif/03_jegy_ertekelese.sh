#!/bin/bash

echo "Adj meg egy jegyet:"
read jegy1

if [ $jegy1 -eq 5 ]
then
    echo "Jeles."
elif [ $jegy1 -eq 4 ]
then 
    echo "Jó."
elif [ $jegy1 -eq 3 ]
then
    echo "Közepes."
elif [ $jegy1 -eq 2 ]
then
    echo "Elégséges."
else
    echo "Elégtelen."
fi