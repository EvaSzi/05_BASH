#!/bin/bash

darab=0

while read
do
    darab=$((darab +1))
done < file.txt

echo "A sorok száma: $darab"