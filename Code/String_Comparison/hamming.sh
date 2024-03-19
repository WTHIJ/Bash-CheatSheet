#!/usr/bin/env bash

correct="$1"
param="$2"
i=0
erreur=0

if [ $# == 2 ]
then
    if [ ${#correct} == ${#param} ]
    then
        for L in $(seq 1 ${#correct}); do
            lettre=${correct:i:1}
            lettreparam=${param:i:1}

            if [ $lettre != $lettreparam ]
            then
                erreur=$(($erreur+1))
            fi
            i=$(($i + 1))
        done
        echo $erreur
    else
        echo "strands must be of equal length"
        exit 1
    fi
else
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi