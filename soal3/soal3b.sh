#!/bin/bash

for ((img=1; img<=23; img=img+1))
do 
  wget -O "Kumpulan_$img" https://loremflickr.com/320/240/cat -a Foto.log

  awk -F / '/Location: / {print $4}' Foto.log > tmploc.txt

  awk 'END{print}' tmploc.txt >> loc.txt
  count=$(sort loc.txt | uniq -d)

  if [[ $count>0 ]]
  then
     sed -i '$d' loc.txt
     rm "Kumpulan_$img"

  fi

done 
rm tmploc.txt
rm loc.txt

mkdir /home/alifai/Documents/Shift1/$(date +%d-%m-%Y)

mv Kumpulan_* /home/alifai/Documents/Shift1/$(date +%d-%m-%Y)
mv Foto.log /home/alifai/Documents/Shift1/$(date +%d-%m-%Y)
