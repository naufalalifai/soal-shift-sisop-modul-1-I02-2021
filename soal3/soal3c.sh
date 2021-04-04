#!/bin/bash

yesterday=$(date -d '-1 day' '+%d-%m-%Y')
now=$(date +%d-%m-%Y)


for ((img=1; img<=23; img=img+1))
do
    if [[ -d "/home/alifai/Documents/Shift1/Kucing_$yesterday" ]]
	  then
  		wget -O "Kumpulan_$img" https://loremflickr.com/320/240/bunny -a Foto.log

  		awk -F / '/Location: / {print $4}' Foto.log > tmploc.txt

  		awk 'END{print}' tmploc.txt >> loc.txt
  		count=$(sort loc.txt | uniq -d)

  		if [[ $count>0 ]]
  		then
     			sed -i '$d' loc.txt
     			rm "Kumpulan_$img"
  		fi
	  else
		  wget -O "Kumpulan_$img" https://loremflickr.com/320/240/kitten -a Foto.log
      
      awk -F / '/Location: / {print $4}' Foto.log > tmploc.txt

      awk 'END{print}' tmploc.txt >> loc.txt
      count=$(sort loc.txt | uniq -d)

      if [[ $count>0 ]]
      then
          sed -i '$d' loc.txt
          rm "Kumpulan_$img"
      fi
	  fi
done
rm tmploc.txt
rm loc.txt


if [[ -d "/home/alifai/Documents/Shift1/Kucing_$yesterday" ]]
then
        dir="Kelinci_$now"
else
        dir="Kucing_$now"
fi

mkdir /home/alifai/Documents/Shift1/$dir
mv Kumpulan_* /home/alifai/Documents/Shift1/$dir
mv Foto.log /home/alifai/Documents/Shift1/$dir

