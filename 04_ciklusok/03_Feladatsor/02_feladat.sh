#!/bin/bash

felhasznalok=("anna" "guest" "root" "bela" "guest" "dani")

for users in "${felhasznalok[@]}"
do
if [[ $users == "root" ]]
then
    echo "$users - Tiltott belépés"
elif [[ $users == "guest" ]]
then
    echo "$users - Vendég hozzáférés"
else
    echo "$users - Normál belépés"
fi
done