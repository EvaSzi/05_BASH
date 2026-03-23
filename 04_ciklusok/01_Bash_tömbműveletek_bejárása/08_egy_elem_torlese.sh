#!/bin/bash

viragok=("rózsa" "tulipán" "liliom")
unset viragok[1]

for virag in ${viragok[@]}
do
echo $virag
done