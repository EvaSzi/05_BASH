#!/bin/bash

scriptnev="konfiguracio_ellenorzes.sh"

if [ ! -f "$scriptnev" ]
then
    echo "A $scriptnev script nem található."
    exit 1
fi

chmod +x "$scriptnev"
./"$scriptnev"