#!/bin/bash

echo "-----------------";
echo "| appreciate.sh |";
echo "-----------------";

note=$1;

if [ $note -le 20 ] && [ $note -ge 16 ] ;then
    line=1;
elif [ $note -lt 16 ] && [ $note -ge 14 ] ;then
    line=2;
elif [ $note -lt 14 ] && [ $note -ge 12 ] ;then
    line=3;
elif [ $note -lt 12 ] && [ $note -ge 10 ] ;then
    line=4;
elif [ $note -lt 10 ] ;then
    line=5;
fi

more ./appreciations.txt +$line -n1;