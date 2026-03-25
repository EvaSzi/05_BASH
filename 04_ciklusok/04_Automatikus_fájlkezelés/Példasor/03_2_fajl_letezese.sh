#!/bin/bash

if [ -f "file.txt" ]
then
    echo "A file.txt létezik és egy normál fájl."
else
    echo "A fájl nem létezik."
fi