#!/bin/bash

echo "Hány éves vagy?"
read szam

if [ $szam -lt 0 ]
then
    echo "Adj meg egy valós életkort."
elif [ $szam -ge 18 ]
then
    echo "Felnőtt vagy."
elif [ $szam -ge 14 ]
then
    echo "Tini vagy."
elif [ $szam -lt 14 ]
then
    echo "Gyerek vagy."
fi