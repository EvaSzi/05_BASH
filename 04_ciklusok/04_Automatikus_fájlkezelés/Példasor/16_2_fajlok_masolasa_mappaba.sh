#!/bin/bash

mkdir -p mentesek

for fajl in *.txt
do
    cp "$fajl" mentesek/
done 

echo "A másolás kész."