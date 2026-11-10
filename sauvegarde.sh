#!/bin/bash

dossier="/home/johan/devops/sauvegarde"
compteur=0

if [ ! -d "$dossier" ]; then
    echo "le dossier $dossier n'existe pas. Je le crée."
    mkdir "$dossier"
fi

for f in *.txt; do
    cp "$f" "$dossier"
    compteur=$((compteur + 1))
done

echo "sauvegarde terminée : $compteur copiés."
    

  
