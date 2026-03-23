#!/bin/bash

uzenetek=("hello" "ok" "spam ajanlat" "szia" "no" "talalkozunk holnap")
for mod in "${uzenetek[@]}"
do
if [[ "$mod" == *spam* ]]
then
    echo "$mod - Tiltott szó"
elif [ ${#mod} -le 3 ]
then
    echo "$mod - Figyelem: túl rövid"
else
    echo "$mod - Rendben"
fi
done