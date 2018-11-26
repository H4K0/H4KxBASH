#!/bin/bash
# Script by H4K0 @ BLAHCORP
# COME AS IS

echo "Confirmando existencia del fichero de registro."
if [ -e /home/h4k0/bin/iphistory.txt ]
then
	FILE=/home/h4k0/bin/iphistory.txt
	PROOF=$(curl -s http://ipecho.net/plain)

	echo "Validando antes de guardar"
	if [ $PROOF !=  $(tail -n 1 $FILE ) ]
	then
		echo $PROOF >> $FILE
		echo "Guardado exitoso..."
	else
		echo "Vaya, no hemos cambiado de dirección." 
	fi
else
	echo "No existe el fichero."
fi
