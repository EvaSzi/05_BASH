#!/bin/bash

mkdir -p mentesek_uj2
cp adatok.txt "mentesek_uj2/adatok_$(date +%Y%m%d).txt"

echo "A mentés elkészült."