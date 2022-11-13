#!/bin/bash

echo "-------------";
echo "| reader.sh |";
echo "-------------";

# - comment quitter more ?
#   En appuyant sur la touche Q

# - comment avancer d’une ligne ?
#   En appuyant sur la touche Entrée

# - comment avancer d’une page ?
#   En appuyant sur la touche Espace

# - comment remonter d’une page ?
#   En appuyant sur la touche B

# - comment chercher une chaîne de caractères ? Passer à l’occurence suivante ?
#   en passant le paramètre +/<pattern> à la commande more
#   on passe à l'occurence suivante avec la touche N

search_dir=$1;

for item in "$search_dir"* ;do

    file $item;
    echo "Voulez-vous lire ce fichier ? (yes / ^C)";
    read userReads;

    if [ $userReads=="yes" ] ;then
        printf '\n';
        more $item;
        printf '\n';
    fi

done