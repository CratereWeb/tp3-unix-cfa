#!/bin/bash

printf '\n';
echo "----------------------";
echo "| does-user-exist.sh |";
echo "----------------------";
printf '\n';

if [ $# -eq 1 ] ;then
    
    name=$1;

    result=$(awk -v name=$name -F ':' '$1==name {print "L\047utilisateur",$1,"existe. Son UID est",$3}' /etc/passwd);

    if [ ${#result} -eq 0 ]; then
        echo "Aucun utilisateur ne s'appelle $name.";
        export EXISTS=0;
    else
        echo $result;
        export EXISTS=1;
    fi

else 

    if [ $# -gt 1 ] ;then 

        printf "Veuillez ne saisir qu'un seul argument : ";

    elif [ $# -lt 1 ] ;then
        
        printf "Veuillez saisir ";

    fi

    echo "le nom de l'utilisateur que vous cherchez.";
fi

printf '\n';
