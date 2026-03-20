#!/bin/bash

echo "Adj meg egy számot."
read szam1

echo "Adj meg egy másik számot."
read szam2

if [ $szam1 -gt $szam2 ]
then
	echo "Az első szám nagyobb."
elif [ $szam1 -lt $szam2 ]
then
	echo "A második szám nagyobb."
else
	echo "A két szám egyenlő."
fi