#!/bin/bash

printf '\n';
echo "---------------";
echo "| listedir.sh |";
echo "---------------";
printf '\n';

if [ $# -eq 1 ] ;then

    if [ -d $1 ] ; then

        search_dir=$1
        files=""
        subdirs=""
        
        for item in "$search_dir"* ;do
            
            if [ -f $item ] ;then
                files+="$item\n";

            elif [ -d $item ] ;then
                subdirs+="$item\n"

            fi
        done

        echo "##### fichiers dans $search_dir";
        echo -e "$files";
        echo "##### repertoires dans $search_dir";
        echo -e "$subdirs";
    
    else 

        echo "Erreur : $1 n'est pas un répertoire";

    fi
    

else 

    if [ $# -lt 1] ;then

        echo "Erreur : Veuillez spécifier le répertoire que vous souhaitez analyser";

    elif [ $# -gt 1] ;then

        echo "Erreur : Veuillez spécifier uniquement le fichier que vous souhaitez analyser";

    fi

fi

printf '\n';