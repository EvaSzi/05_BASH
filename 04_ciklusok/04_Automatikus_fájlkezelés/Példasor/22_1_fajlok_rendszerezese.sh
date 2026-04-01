#!/bin/bash

mkdir -p logok

for fajl in *.log
do
    mv "$fajl" logok/
done

echo "A log fájlok áthelyezve."