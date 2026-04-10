#!/bin/bash

cd bash_feladat9_demo || exit

status=("nginx" "mysql" "redis")

echo "Szolgáltatásállapot-jelentés" >> allapotjelentes.txt
echo "" >> allapotjelentes.txt

for state in "${status[@]}"
do
    echo "$state:" >> allapotjelentes.txt

    if [ -f "services/$state.pid" ]
    then
        echo "PID fájl: rendben" >> allapotjelentes.txt
    else
        echo "PID fájl: hiányzik" >> allapotjelentes.txt
    fi

    if [ -f "configs/$state.conf" ]
    then 
        echo "Konfiguráció: rendben" >> allapotjelentes.txt
    else
        echo "Konfiguráció: hiányzik" >> allapotjelentes.txt
    fi

    if [ -f "logs/$state.logs" ]
    then
        echo "Logfájl: rendben" >> allapotjelentes.txt
    else
        echo "Logfájl: hiányzik" >> allapotjelentes.txt
    fi

    echo "" >> allapotjelentes.txt
done

cat allapotjelentes.txt