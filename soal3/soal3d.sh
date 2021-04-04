#!/bin/bash

cd /home/alifai/Documents/Shift1

if [ $(date +%H%M) == '0700' ]
then
	zip -rm -P $(date '+%m%d%Y') Koleksi.zip Kucing_* Kelinci_*
elif [ $(date +%H%M) == '1800' ]
then
	unzip -P $(date '+%m%d%Y') Koleksi.zip 
	rm Koleksi.zip
fi
