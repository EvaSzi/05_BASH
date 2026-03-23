#!/bin/bash

italok=("kávé" "tea" "víz")
for ital in ${italok[@]}
do
echo "A következő italokat szeretném a party-ra: $ital"
done
sleep 2
italok[1]="limonádé"
for ital in ${italok[@]}
do
echo "De a főnök inkább ezeket kéri: $ital"
done