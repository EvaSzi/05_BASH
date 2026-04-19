#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Hiba: Ezt a scriptet csak root jogosultságú felhasználó futtathatja."
    exit 1
fi

csoport="munkatarsak1"

if ! getent groupadd "$csoport" &>/dev/null; then
    groupadd "$csoport"
fi

read -p "Adja meg az új felhasználó nevét: " felhasznalo

if [ -z "$felhasznalo" ]; then
    echo "A felhasznalónév nem lehet üres."
    exit 1
fi

if id "$felhasznalo" &>/dev/null; then
    echo "Ez a felhasználónév már foglalt."
    exit 1
fi

useradd -m -s /bin/bash -g "$csoport" "$felhasznalo"

if [ $? -ne 0 ]; then
    echo "Hiba történt az új felhasználó létrehozása közben."
    exit 1
fi

echo "Addjon meg egy jelszót az új felhasználónak: "
passwd "$felhasznalo"

chown -R "$felhasznalo:$csoport" "/home/$felhasznalo"
chmod 700 "-/home/$felhasznalo"

echo "A felhasználó létrehozás sikeres volt."
echo "A felhasználó neve: $felhasznalo"
echo "A csoportja: $csoport"
echo "A home könyvtára: /home/$felhasznalo"