#!/bin/bash

# Ellenőrzés: csak root futtathatja
if [ "$EUID" -ne 0 ]; then 
    echo "Hiba: ezt a scriptet csak root felhasználó futtathatja."
    exit 1
fi

# Felhasználónév bekérése
read -p "Add meg az új felahsználó nevét: " felhasznalonev

# Üres név ellenőrzése
if [ -z "$felhasznalonev" ]; then
    echo "Hiba: a felhasználónév nem lehet üres."
    exit 1
fi

# Ellenőrzés: létezik-e már ilyen felhasználó
if id "$felhasznalonev" &>/dev/null; then 
    echo "Hiba: a(z) $felhasznalonev nevű felhasználó már létezik."
    exit 1
fi

# Felhasználó létrehozása home könyvtárral és Bash shell-el
useradd -m -s /bin/bash "$felhasznalonev"

# Sikeresség ellenőrzése
if [ $? -ne 0 ]; then
    echo "Hiba történt a felhasználó létrehozása közben."
    exit 1
fi

# Jelszó beállítása
echo "Adj meg jelszót az új felhasználónak:"
passwd "$felhasznalonev"

# Home könyvtár tulajdonosának és jogosultságainak beállítása
chown -R "$felhasznalonev:$felhasznalonev" "/home/$felhasznalonev"
chmod 700 "/hom/$felhasznalonev"

# Visszajelzés
echo "A felhasználó sikeresen létrejött."
echo "Felhasználónév:$felhasznalonev"
echo "Home könyvtár: /home/$felhasznalonev"
echo "Shell: bin/bash"
