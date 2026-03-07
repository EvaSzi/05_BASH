#!/bin/bash

echo "Addj meg egy számot: "
read a
echo "Addj meg még egy számot: "
read b

if [ $a -eq $b ]
then
    echo "A két szám egyenlő."
else
    echo "Nem egyenlő a két szám."
fi