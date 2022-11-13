#!/bin/bash

echo "------------------";
echo "| create-user.sh |";
echo "------------------";


if [ $# -eq 1 ] ;then
    
    login=$1;

    . ./does-user-exist.sh $1;

    if [ $EXISTS -eq 1 ] ;then
        echo "Vous ne pouvez donc pas créer un utilisateur à ce nom.";

    elif [ $USER=="root" ] ;then
        
        echo "Paramétrez l'utilisateur $login :";
        printf "Prénom : "; read firstname;
        printf "Nom : "; read lastname;
        printf "UID : "; read uid;
        
        while $(echo $uid | egrep -q '^[^0-9()]+$') ;do
            echo "Le UID (User ID) doit être un nombre. Réessayez.";
            printf "UID : "; read uid;
        done

        printf "GID : "; read gid;

        while $(echo $gid | egrep -q '^[^0-9()]+$') ;do
            echo "Le GID (Group ID) doit être un nombre. Réessayez.";
            printf "GID : "; read gid;
        done
        
        printf "Commentaire : "; read comment;

        printf "\nVoulez-vous créer un nouvel utilisateur $login d'après ces paramètres ? (yes / ^C ) \n";

        read confirm;
        
        homedir=/home/$login;

        echo $homedir;

        if [ $confirm=='yes' ] ;then
            echo "Création de l'utilisateur $login ... ";
            useradd -d /home/$login -g $gid -u $uid -s /bin/bash $login;
            echo "L'utilisateur $login a été créé avec succès. Son répertoire utilisateur est /home/$login";
        fi

    fi

else 

    if [ $# -gt 1 ] ;then 

        printf "Veuillez ne saisir qu'un seul argument : ";

    elif [ $# -lt 1 ] ;then
        
        printf "Veuillez saisir ";

    fi

    echo "le nom de l'utilisateur que vous souhaitez créer.";
fi

printf '\n';