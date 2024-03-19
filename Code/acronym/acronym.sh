#!/usr/bin/env bash

acronym=""
sentence=${1//[^a-zA-Z\']/ }
sentence="${sentence^^}"
for word in $sentence
do
    acronym="$acronym${word:0:1}"
done
echo "$acronym"
