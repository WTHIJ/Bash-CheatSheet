#!/usr/bin/env bash
set -e

if [ $# = 1 ]
then
    echo "Hello, "$1
else
    echo "Usage: error_handling.sh <person>"
    exit 1
fi

