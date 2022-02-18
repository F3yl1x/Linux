#!/bin/bash

if [ -f $1 ]
then
	echo "usage: ./ist_negativ.sh [zahl]"
	exit 1
elif [ $1 -lt 0 ]
then
	echo "Ja"

elif [ $1 -ge 0 ]
then
	echo "Nein"
fi
exit 0
