#!/bin/bash

# Ellenőrzés: csak root futtathatja
if [ "$EUID" -ne 0 ]; then
    echo "Hiba: ezt a scriptet csak root felhasználó futtathatja."
    exit 1
fi

# Felhasználónév bekérése
read -p "Add meg az új felhasználó nevét: " felhasznalonev

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

# Shell bekérése
read -p "Add meg a kívánt shell teljes elérési útját: " shell_utvonal

# Üres shell ellenőrzése
if [ -z "$shell_utvonal" ]; then
    echo "Hiba: a shell útvonala nem lehet üres."
    exit 1
fi

# Ellenőrzés: létezik-e és futtatható-e a shell
if [ ! -x "$shell_utvonal" ]; then
    echo "Hiba: a megadott shell nem létezik vagy nem futtatható."
    exit 1
fi

# Ellenőrzés: szerepel-e az engedélyezett shellek között
if ! grep -Fxq "$shell_utvonal" /etc/shells; then
    echo "Hiba: a megadott shell nincs az engedélyezett shellek között."
    exit 1
fi

# Felhasználó létrehozása home könyvtárral és megadott shell-lel
useradd -m -s "$shell_utvonal" "$felhasznalonev"

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
chmod 700 "/home/$felhasznalonev"

# Visszajelzés
echo "A felhasználó sikeresen létrejött."
echo "Felhasználónév: $felhasznalonev"
echo "Home könyvtár: /home/$felhasznalonev"
echo "Shell: $shell_utvonal"