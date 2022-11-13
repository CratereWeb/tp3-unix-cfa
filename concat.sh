#!/bin/bash

printf '\n';
echo "-------------";
echo "| concat.sh |";
echo "-------------";
printf '\n';

if [ $# -eq 2 ] ;then
    concat="$1 $2"
    echo $concat
else 
    echo "Erreur: Vous devez entrer exactement 2 paramètres";
fi

printf '\n';