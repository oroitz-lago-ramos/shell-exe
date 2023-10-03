#!/bin/bash

while IFS=, read -r field1 field2 field3 field4 field5
do
    echo "$field1, $field2, $field3, $field4, $field5"
    sudo useradd "$field1"
    sudo passwd "$field4"
done < Shell_Userlist.csv
