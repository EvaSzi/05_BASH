#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Hiba: ezt a scriptet csak root felhasználó futtathatja."
    exit 1
fi

read -p "Kérem adja meg az új felhasználó nevét: " felhasznalo

if [ -z "$felhasznalo" ]; then
    echo "A felhasználónév nem lehet üres."
    exit 1
fi

if id "$felhasznalo" &>/dev/null; then
    echo "A(z) $felhasznalo nevű felhasználó már létezik."
    exit 1
fi

useradd -m -s /bin/bash "$felhasznalo"

if [ $? -ne 0 ]; then
    echo "Hiba: A felhasználó létrehozása sikertelen volt."
    exit 1
fi

echo "Adjon meg egy jelszót a $felhasznalo nevű felhasználónak:"
passwd "$felhasznalo"

chown -R "$felhasznalo:$felhasznalo" "/home/$felhasznalo"
chmod 700 "/home/$felhasznalo"

echo "A felhasználó neve: $felhasznalo"
echo "A home könyvtára: /home/$felhasznalo"
echo "A shell: /bin/bash"