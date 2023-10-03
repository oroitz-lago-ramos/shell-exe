#!/bin/bash

date_actuelle=$(date +"%d-%m-%Y-%H:%M")
# sudo cat /var/log/auth.log | grep "session opened" > number_connection-$date_actuelle

logfile="/var/log/auth.log"
connexions=$(sudo grep "session open" "$logfile")
nombre_connexions=$(echo "$connexions" | wc -l)
nom_fichier="number_connection-$date_actuelle"

echo "$nombre_connexions" > "$nom_fichier"
tar -cvf Backup/$nom_fichier.tar $nom_fichier
sudo rm $nom_fichier
