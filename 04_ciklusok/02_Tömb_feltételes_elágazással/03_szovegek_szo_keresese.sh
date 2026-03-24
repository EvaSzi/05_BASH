 #!/bin/bash

 gyumolcsok=("alma" "körte" "szilva" "barack")

for gyumolcs in "${gyumolcsok[@]}"
do
    if [ "$gyumolcs" = "szilva" ]
    then
        echo "Megtaláltam: $gyumolcs"
    fi
done