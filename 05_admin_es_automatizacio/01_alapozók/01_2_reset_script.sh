#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Hiba: ezt a scriptet csak root felhasználó futtathatja."
    exit 1
fi

# Testreszabható adatok
felhasznalok=("felhasznalo01" "felhasznalo02")

echo "Törlés indul..."

# Felhasználók törlése home könyvtárral együtt
for felhasznalonev in "${felhasznalok[@]}"; do
    if id "$felhasznalonev" &>/dev/null; then
        userdel -r "$felhasznalonev"
        echo "Törölve: $felhasznalonev"
    else
        echo "Nem létezik, kihagyva: $felhasznalonev"
    fi
done

echo "A reset művelet befejeződött."