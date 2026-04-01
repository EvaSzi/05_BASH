#!/bin/bash

echo "Adja meg a file nevét amelyet ki szeretne törölni:"
read fajlnev
if [ -f "$fajlnev" ]
then
        echo "Biztosan ki szeretné törölni "$fajlnev" fájlt? (i/n)"
        read valasz
        if [ "$valasz" = "i" ]
        then
                rm "$fajlnev"
                echo "A "$fajlnev" törlése sikeresen megtörtént."
        else
                echo "A fájl törlése megszakítva."
        fi
else
        echo "Az Ön által megadott fájl nem létezik."
fi
