#!/usr/bin/env bash

if [ $# = 1 ]
then
    if [ "$1" = 0 ]
    then
        echo "Usage: raindrops.sh <number>"
        exit 1
    fi
    sentence=""
    if [ $(($1 % 3)) == 0 ]
    then
        sentence=$sentence"Pling"
    fi
    if [ $(($1 % 5)) == 0 ]
    then
        sentence=$sentence"Plang"
    fi
    if [ $(($1 % 7)) == 0 ]
    then
        sentence=$sentence"Plong"
    fi
    if [ "$sentence" == "" ]
    then
        echo "$1"
    else
        echo $sentence
    fi
else
    echo "Usage: raindrops.sh <number>"
    exit 1
fi