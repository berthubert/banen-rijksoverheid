#!/bin/bash

(echo vacaturenummer,sensitiviteit 
for a in vacancies-2022-07-09/* 
do 
	(grep "'Vacaturenummer'" $a | cut -f4 -d\' ; grep -ic -E 'sensitiviteit|sensitief' $a ) | tr "\n" "," | sed 's/,$//'
	 echo  
done) > sensitiviteit.csv

