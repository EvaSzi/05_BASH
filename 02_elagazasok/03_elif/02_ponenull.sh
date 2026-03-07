#!/bin/bash

echo "Addj meg egy számot: "
read szam

if [ $szam -gt 0 ]
then
    echo "A szám pozitív."
elif [ $szam -eq 0 ]
then
    echo "A szám nulla."
else
    echo "A szám negatív."
fi

#---------------------------------------#

#!/bin/bash

echo "Addj meg egy számot: "
read szam

if [ $szam -gt 0 ]
then
    echo "A szám pozitív."
elif [ $szam -eq 0 ]
then
    echo "A szám nulla."
elif [ $szam -lt 0 ]
then
    echo "A szám negatív."
else
    echo "Valami nem jó!"
fi