#!/bin/bash

read -p "Kérek egy számot: " a
read -p "Kérek még egy számot: " b

if [ $a -ne $b ]
then
    echo "A két szám különbözik, vagyis nem egyenlő."
else
    echo "A két szám egyenlő."
fi