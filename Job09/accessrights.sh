#!/bin/bash
while IFS=, read -r id prenom nom mdp role; do
id=${id:0:(${#id}-1)}
prenom=${prenom:0:(${#prenom}-1)}
nom=${nom:0:(${#nom}-1)}
mdp=${mdp:0:(${#mdp}-1)}
role=${role:0:(${#role}-1)}


echo "$role"
done < Shell_Userlist.csv