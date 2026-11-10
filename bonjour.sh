 
#!/bin/bash
# Mon premier script Bash

prenom="Johan"
touch journal.txt 

echo "Bonjour $prenom !"
echo "Nous sommes le $(date +%d/%m/%Y)"
echo "Script lancé le $(date '+%d/%m/%Y à %H:%M:%S')" >> journal.txt
echo "Tu es dans le dossier : $(pwd)"
echo "Voici son contenu :"
ls

