#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file> <wordToReplace> <wordToBeReplacedWith>"
    exit 1
fi

file="$1"
wordToReplace="$2"
wordToBeReplacedWith="$3"

# Reemplazar todas las instancias de la palabra en el archivo
sed -i "s/\b$wordToReplace\b/$wordToBeReplacedWith/g" "$file"

echo "Words replaced successfully in $file."
