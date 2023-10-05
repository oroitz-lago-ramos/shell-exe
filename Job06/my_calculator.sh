#!/bin/bash

if [ "$2" = "+" ]
then
resultat=$(($1 + $3))
operation="somme"
elif [ "$2" = "-" ]
then
resultat=$(($1 - $3))
operation="soustraction"
elif [ "$2" = "x" ] || [ "$2" = "*" ]
then
resultat=$(($1 * $3))
operation="multiplication"
elif [ "$2" = "%" ] || [ "$2" = "/" ]
then
if [ $3 -ne 0 ]
then
resultat=$(($1 / $3))
operation="division"
else
echo "Division par 0 interdite"
exit 1
fi
else
echo "erreur d'opérateur"
exit 1
fi

echo "La $operation de $1 et de $3 est égale à $resultat."
