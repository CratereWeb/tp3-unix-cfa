#!/bin/bash

printf '\n';
echo "-------------------";
echo "| test-fichier.sh |";
echo "-------------------";
printf '\n';

# ./testFiles/1.txt peut être utilisé pour le test

if [ $# -eq 1 ] ;then
   
    if [ -f $1 ] ;then

        echo "Le fichier $1 existe";

        printf '\n';

        permissions=":"

        if [ -r $1 ] ;then
            permissions="$permissions lecture"
        fi
        if [ -w $1 ] ;then
            permissions="$permissions écriture"
        fi
        if [ -x $1 ] ;then
            permissions="$permissions exécution"
        fi

        echo "Le fichier $1 est accessible en $permissions";

    else 

        echo "Erreur : Le fichier $1 n'existe pas";

    fi

else 

    if [ $# -gt 1 ] ;then

        echo "Erreur : Veuillez spécifier uniquement le fichier que vous souhaitez tester";

    elif [ $# -lt 1 ] ;then
        
        echo "Erreur : Veuillez spécifier le fichier que vous souhaitez tester";

    fi

    
fi

printf '\n';