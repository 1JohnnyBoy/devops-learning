#!/bin/bash
set -e
# Sauvegarde ~/devops dans une archive datée

source_dir="/home/johan/devops"
dest_dir="/home/johan/backups"
date_jour=$(date '+%Y-%m-%d_%Hh%Mm%S')
archive="$dest_dir/backup_$date_jour.tar.gz"
journal="$dest_dir/backup.log"

# 1.créer le dossier de destination (mkdir -p)
mkdir -p "$dest_dir"

# 2.créer l'archive de source_dir (tar)
tar -czf "$archive" "$source_dir"  

if [ ! -s "$archive" ]; then
    echo "ERREUR : archive absente ou vide" >> "$journal"
    exit 1
fi

# 3.supprimer les archives de plus de 7 jours (find)
find "$dest_dir" -name "*.tar.gz" -mtime +7 -delete
 
# 4.jouter une ligne au journal avec la date, l'heure et le nom de l'archive
echo "$(date '+%d/%m/%Y %H:%M:%S') : $archive" >> "$journal"

echo "Sauvegarde terminée : $archive" 

