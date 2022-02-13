#!/bin/bash

if [ -f $1 ]
then
	echo "usage: ./ist_negativ.sh [zahl]"
	return 1
elif [ $1 -lt 0 ]
then
	echo "Ja"

elif [ $1 -ge 0 ]
then
	echo "Nein"
fi
return 0
