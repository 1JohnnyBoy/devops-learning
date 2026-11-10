
*Le script backup.sh permet de décompresser le dossier, répertoire ~/devops (/home/johan/devops) dans une archive dont le nom est horodaté par ex 
backup_2026-11-10_16h27.tar.gz et range cette archive dans ~/backups (/home/johan/backups) qui sera créé dans le script, la commande find supprime 
les archivves de plus de 7 jours pour ne pas remplir le disque, le script permet aussi de noter chaque sauvegarde dans un journal ~/backups/backup.log
avec la date et l'heure; pour lancer le script : johan@6KAMGANG:~/devops$ ./backup.sh 

*cron est un programme qui lance des commandes à des moments précis,il joue un grand role dans l'automatisation, il éxécute des scripts sans que 
l'utilisateur soit présent 
