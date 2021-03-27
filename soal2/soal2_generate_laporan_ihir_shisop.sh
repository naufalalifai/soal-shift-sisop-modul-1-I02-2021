#!/bin/bash
LC_ALL=C awk -F "\t" '
BEGIN{}
{
ProfitPercentage=(($21/($18-$21))*100)
if(ProfitPercentage>1)
{
maxprof=ProfitPercentage
row=$1
}
}
END{
printf("The Last Transaction with the largest %d with a percentage of %d%%. \n",row,maxprof)}' /home/drigo/Downloads/Laporan-TokoShiSop.tsv  >> Hasil.txt



LC_ALL=C awk -F "\t" '
BEGIN{} {
if(($10=="Albuquerque") && $2~2017)
 {
arr[$7]
 }
}
END {echo "The list of customer name in Albuquerque in 2017 includes :"
for (test in arr)
{
printf("\n%s\n", test)
}}' /home/drigo/Downloads/Laporan-TokoShiSop.tsv >> Hasil.txt
