#!/bin/bash


if [ ! $# -ge 1 ] || [ ! -e $1 ]
then
    echo 'Parametre introuvable'
    exit 1
fi

for i in {A..Z}
do
   x=`grep $i $1 | wc -l`
   echo "$x - $i"
done

#Trie les mots par odre décroissant
if [ $2 ]
then

echo "Patientez 5 secondes"
sleep 5

for mot in {$1}
do
   w=`sort -r $1`
   echo "$w"

done
fi
