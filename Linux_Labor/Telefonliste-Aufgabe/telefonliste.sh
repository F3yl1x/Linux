#!/bin/bash

if test -z $*
then
    echo "usage: $0 [-vntc]"
    echo
    echo "-v: Gebe alle Vornamen sortiert wieder (ohne Dupplikate)"
    echo "-n: Gebe alle Nachname sortiert wieder (ohne Dupplikate)"
    echo "-t: Gebe alle Telefonnummern sortiert wieder (ohne Dupplikate)"
    echo "-c: Konvertiere Telefonliste in ein CSV-Format"
    exit 1
fi




if [ $1 == '-v' ]
then
    while read line
    do
        vorname+=$(echo $line|cut -d ' ' -f 1)
        vorname+="\n"
    done
    #$vorname | sort
    vorname=${vorname: : -2}

    echo -e $vorname |sort |uniq
fi

if [ $1 == '-n' ]
then
    while read line
    do
        nachname+=$(echo $line|cut -d ' ' -f 2)
        nachname=${nachname: : -1}
        nachname+="\n"
    done

    nachname=${nachname: : -2}

    echo -e $nachname |sort |uniq
fi

if [ $1 == '-t' ]
then
    while read line
    do
        nummer+=$(echo $line|cut -d ' ' -f 3)
        nummer+="\n"
    done

    nummer=${nummer: : -2}

    echo -e $nummer |sort |uniq
fi

if [ $1 == '-c' ]
then
    while read line
    do
        eingabe+=$(echo $line)
        eingabe+="\n"
    done

    eingabe=${eingabe: : -2}

    echo -e $eingabe |tr -d ':' |tr ' ' ';'
fi

exit 0