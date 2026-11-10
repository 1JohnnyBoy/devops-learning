#!/bin/bash
# Vérifie si le journal existe

fichier="journal.txt"

if [ -f "$fichier" ]; then
    lignes=$(wc -l < "$fichier")
    echo "Le fichier $fichier existe."
    echo "Il contient $lignes lignes."
    if [ "$lignes" -gt 5 ]; then
         echo "attention le journal est trop long"
    fi
else
    echo "Le fichier $fichier n'existe pas. Je le crée."
    touch "$fichier"
fi
