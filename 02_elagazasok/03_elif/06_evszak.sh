#!/bin/bash

echo "Adj meg egy hónap számot 1 és 12 között, és megmondom milyen évszak van."
read szam

if [ $szam -eq 12 ]
then
	echo "Tél van."
elif [ $szam -ge 9]
then
	echo "Ősz van"
elif [ $szam -ge 6]
then
	echo "Nyár van."
elif [ $szam -ge 4]
then
	echo "Tavasz van."
else
	echo "Tél van."
fi