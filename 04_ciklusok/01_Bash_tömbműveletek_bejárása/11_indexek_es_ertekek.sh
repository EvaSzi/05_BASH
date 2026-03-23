#!/bin/bash

nevek=("Anna" "Béla" "Csilla")

for index in "${!nevek[@]}"
do
echo "$index - ${nevek[$index]}"
done