#!/bin/bash
# Affiche chaque fichier texte et son nombre de lignes

for f in *.txt; do
    lignes=$(wc -l < "$f")
    echo "$f : $lignes lignes"
done 
