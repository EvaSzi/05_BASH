#!/bin/bash

nevek=("Anna" "Béla" "Csilla")
nevek+=("Dávid")
nevek[1]="Bence"

for nev in "${nevek[@]}"
do
echo $nev
done

echo ${#nevek[@]}