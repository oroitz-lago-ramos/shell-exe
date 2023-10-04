#!/bin/bash
sed '1d' Shell_Userlist.csv > temp_file.csv

while IFS=, read -r id prenom nom mdp role; do
role=${role:0:(${#role}-1)}
username=$(echo "$prenom $nom")
sudo useradd "$username" --badname --uid "$id"
echo "$username:$mdp" | sudo chpasswd
if [ "$role" = "Admin" ]
then
sudo usermod -aG sudo "$username"
fi
done < temp_file.csv

rm temp_file.csvcd 