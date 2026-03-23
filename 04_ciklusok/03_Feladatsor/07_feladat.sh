#!/bin/bash

cimek=("https://iskola.hu" "http://pelda.hu" "ftp://tar.hu" "https://openai.com")

for web in "${cimek[@]}"
do
    if [[ $web == https://* ]]
    then
        echo "$web - biztonságos oldal"
    elif [[ $web == http://* ]]
    then
        echo "$web - nem biztonságos oldal"
    else
        echo "$web - ismeretlen protokoll"
    fi
done