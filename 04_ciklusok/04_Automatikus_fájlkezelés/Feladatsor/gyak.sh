1.feladat

#!/bin/bash

cd bash_feladat1_demo || exit

files=("nginx.conf" "app.env" "db.conf" "backup.confg")

for file in "${files[@]}"
do
    if [ ! -e "$file" ]
    then
        echo "$file - hiányzik"
    elif [ ! -r "$file" ]
    then
        echo "$file - nem olvasható"
    else
        echo "$file - rendben"
    fi
done

--------------------------------------------------
2.feladat

#!/bin/bash

cd bash_feladat2_demo || exit

dirs=("app_naplok" "web_naplok" "db_naplok" "mail_naplok")

for dir in "${dirs[@]}"
do
    if [ ! -d "$dir" ]
    then
        echo "$dir - mappa hiányzik"
    else
        for file in "$dir"/*
        do
            if [[ "$file" == *.log ]]
            then
                cp "$file" hibakereses/
                echo "$file - másolva"
            fi
        done
    fi
done

--------------------------------------------------
3.feladat

#!/bin/bash

cd bash_feladat3_demo || exit

files=("cache.tmp" "session.cache" "regi.bak" "adat.csv" "jegyzet.txt" "kep.png")

for file in "${files[@]}"
do
    if [[ "$file" == *.tmp ]] || [[ "$file" == *.cache ]] || [[ "$file" == *.bak ]]
    then
        rm "$file"
        echo "$file - törölve"
    else
        echo "$file - megtartva"
    fi
done

-----------------------------------------------------------


