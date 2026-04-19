#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Hiba: ezt a scriptet csak root felhasználó futtathatja."
    exit 1
fi

# Testreszabható adatok
csoport="felhasznalok"
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

# Csoport törlése, ha létezik
if getent group "$csoport" &>/dev/null; then
    groupdel "$csoport"
    if [ $? -eq 0 ]; then
        echo "Törölve a csoport: $csoport"
    else
        echo "A csoport nem törölhető. Lehet, hogy még tartozik hozzá felhasználó."
    fi
else
    echo "A csoport nem létezik: $csoport"
fi

echo "A reset művelet befejeződött."