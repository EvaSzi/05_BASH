#!/bin/bash

jarmuvek=("autó" "busz" "repülő")
unset jarmuvek

for jarmu in "${jarmuvek[@]}"
do
echo $jarmu
done
echo "A törlés művelet sikeres volt."