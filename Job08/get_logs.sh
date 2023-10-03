

date_actuelle=$(date +"%d-%m-%Y-%H:%M")
echo "$date_actuelle"
# sudo cat /var/log/auth.log | grep "session opened" > number_connection-$date_actuelle
logfile="/var/log/auth.log"
connexions=$(sudo grep "session open" "$logfile")
nombre_connexions=$(echo "$connexions" | wc -l)

echo "$nombre_connexions" > number_connection-$date_actuelle
