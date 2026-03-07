#!/bin/bash

read -p "Kérek egy számot: " a
read -p "Kérek még egy számot: " b

if [ $a -lt $b ]
then
    echo "Az első szám kisebb, mint a második."
else
    echo "A második szám kisebb, mint az első."
fi
