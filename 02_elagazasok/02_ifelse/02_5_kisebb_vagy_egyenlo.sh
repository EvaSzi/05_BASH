#!/bin/bash

echo "Adj meg egy számot: "
read a
echo "Adj meg még egy számot: "
read b

if [ $a -le $b ]
then
    echo "Az első szám kisebb vagy egyenlő, mint a második."
else
    echo "Az első szám nem kisebb vagy egyenlő, mint a második szám."
fi