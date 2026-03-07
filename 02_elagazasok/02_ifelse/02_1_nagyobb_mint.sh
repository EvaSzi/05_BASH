#!/bin/bash

echo "Addj meg egy számot: "
read a
echo "Addj meg még egy számot: "
read b

if [ $a -gt $b ]
then
    echo "Az első szám nagyobb, mint a második."
else
    echo "Az első szám kisebb, mint a második."
fi