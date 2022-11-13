#!/bin/bash

printf '\n';
echo "-------------";
echo "| analyse.sh |";
echo "-------------";
printf '\n';

echo "Bonjour, vous avez entré $# paramètres.";
echo "Le nom du script est $0.";

printf "Le 3ème paramètre est ";
if [ $# -gt 2 ] ;then
    echo "$3.";
else
    echo "indéfini.";
fi

echo "Voici la liste des paramètres : $@";

printf '\n';