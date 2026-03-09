#!/bin/bash

echo "Szia! Hogy hívnak?"
read nev

read -p "Örvendek $nev! Kérek szépen tőled egy számot: " a
read -p "Most mégegyet légyszíves: " b

if [ $a -ge $b ]
then
    echo "Az első szám nagyobb vagy egyenlő, mint a második."
else
    echo "A második szám nagyobb vagy egyenlő, mint az első."
fi