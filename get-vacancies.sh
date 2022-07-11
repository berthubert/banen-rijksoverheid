#!/bin/sh
dirname=vacancies-$(date "+%Y-%m-%d")
mkdir -p $dirname 
cd $dirname

for a in $(cat ../listing/*.html | tr " " "\n"  | grep href=\"/vacatures | cut -f2 -d\" | sort -u)
do 
	echo wget "https://werkenvoornederland.nl/$a"
done | parallel -j 128 
