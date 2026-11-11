#!/usr/bin/env python3
# Vérifie l'espace disque utilisé

from datetime import datetime
import shutil

maintenant = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
seuil = 80
total, utilise, libre = shutil.disk_usage("/")
pourcentage = utilise / total * 100

with open("moniteur.log", "a") as f:
    ligne_log = f"{maintenant} : {pourcentage:.1f} %\n"
    f.write(ligne_log)


print(f"Disque utilisé : {pourcentage:.1f} %")

if pourcentage > seuil:
    print("ALERTE : le disque est presque plein !")
else:
    print("Disque OK") 
