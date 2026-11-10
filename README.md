# Description des scripts
##cron
c'est un programme qui lance des commandes à des moments précis et sans que l'utilisateur ne soit là
## backup.sh
Le script backup.sh permet de compresser le dossier, répertoire ~/devops dans une archive dont le nom est horodaté par ex
backup_2026-11-10_16h27.tar.gz et range cette archive dans ~/backups qui sera créé dans le script (mkdir -p backups)
la commande find supprime les archivves de plus de 7 jours pour ne pas remplir le disque, 
le script permet aussi de noter chaque sauvegarde dans le fichier backup.log avec la date et l'heure; 
pour lancer le script : 


```
./backup.sh

```  



