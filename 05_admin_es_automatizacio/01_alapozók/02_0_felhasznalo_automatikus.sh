#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Ezt a scriptet csak root felhasználó futtathatja."
    exit 1
fi

csoport="felhasznalok"

if ! getent group "$csoport" &>/dev/null; then
    groupadd "$csoport"
fi

read -p "Add meg az új felhasználó nevét: " felhasznalo

if [ -z "$felhasznalo" ]; then
    echo "A felahsználónév nem lehet üres."
    exit 1
fi

if id "$felhasznalo" &>/dev/null; then
    echo "A(z) $felhasznalo nevű felhasználó már létezik."
    exit 1
fi

useradd -m -s /bin/bash -g "$csoport" "$felhasznalo"

if [ $? -ne 0 ]; then
    echo "Hiba történt a felhasználó létrehozása közben."
    exit 1
fi

echo "Addjon meg egy jelszót az új felhasználónak: "
passwd "$felhasznalo"

chown -R "$felhasznalo:$csoport" "/home/$felhasznalo"
chmod 700 "/home/$felhasznalo"

echo "Az új felhasználó sikeresen létrejött."
echo "Felhasználónév: $felhasznalo"
echo "Csoport: $csoport"
echo "Home könyvtár: /home/$felhasznalo"
echo "Shell: /bin/bash"