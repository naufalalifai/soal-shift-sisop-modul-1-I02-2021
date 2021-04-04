# soal-shift-sisop-modul-1-I02-2021

## Member's Name
- Muhammad Naufal Alif Islami (05111942000008)
- Drigo Alexander SIhombing (05111942000020)
- Fitriana Zahirah Tsabit (05111942000011)

## Question 1:
Ryujin has just been accepted as an IT support at Bukapedia. He was given the task of making daily reports for the company's internal application, ticky. There are 2 reports that he has to make, namely the report on the list of most error message ratings made by Ticky and user usage reports on the Ticky application. In order to make this report, Ryujin had to do the following:

a). Collects information from application logs contained in the syslog.log file. The information required includes: log type (ERROR / INFO), log messages, and the username on each log line. Since Ryujin finds it difficult to check one line at a time manually, he uses regex to make his job easier. Help Ryujin create the regex.
     
     #1a
     
b). Then, Ryujin must display all error messages that appear along with the number of occurrences.

     #1b

c). Ryujin must also be able to display the number of occurrences of the ERROR and INFO logs for each user.

     #1c
     
After all the necessary information has been prepared, now is the time for Ryujin to write all the information into a report in the csv file format

d). All information obtained in point b is written into the error_message.csv file with the Error, Count header, which is then followed by a list of error messages and the number of occurrences is ordered based on the number of occurrence of error messages from the most.

     #1d
     
e). All information obtained in point c is written into the user_statistic.csv file with the header Username, INFO, ERROR sorted by username in ascending order.

     #1e

## Question 2:
Steven and Manis founded a startup called “TokoShiSop”, While you and Clemong are the first employees of TokoShiShop. After three years of work, Clemong was appointed to be TokoShiSop’s sales manager, while you became the head of the warehouse who supervised entry and exit of goods.

Every year, TokoShiSop holds a meeting that discusses how sales results and future strategies will be implemented. You’ve been very prepared for this year’s meeting. But suddenly, Steven, Manis, and Clemong ask you to look for some conclusions from the “Laporan-TokoShiSop.tsv” sales data.

a). Every year, TokoShiSop holds a meeting that discusses how sales results and future strategies will be implemented. You’ve been very prepared for this year’s meeting. But suddenly, Steven, Manis, and Clemong ask you to look for some conclusions from the “Laporan-TokoShiSop.tsv” sales data. a). Steven wants to appreciate the performance of his employees so far by knowing Row ID and the largest profit percentage (if the largest profit percentage is more than 1, take the largest Row ID). To make your work easier, Clemong provides the definition of profit percentage, i.e.:

Profit Percentage = (Profit Cost Price) 100
Cost Price is obtained from the reduction of Sales with Profit. (Quantity ignored).


<p align="center"><img width="709" alt="Screen Shot 2021-04-04 at 02 11 04" src="https://user-images.githubusercontent.com/73428164/113488874-052d1c80-94eb-11eb-8b49-51fe92cf3789.png"></p>

     in number 2a, at the beginning we use LC_ALL = C to force the application to use the default output language, 
     then we call the AWK function and use the field separator "\ t" which means we separate each tab into 1 
     column of data. then to start we use begin and end to separate each variable and function in 1 nano. 
     Entering the problem,we use the formula for the percentage of profits with the formula 
     (profit ($ 21) / (sales ($ 18) -profit ($ 21))) * 100. Then after getting the formula and entering 
     it into the profitpercentage variable, we give a condition that is if the variable
     profitpercentage> = from the maxprof variable then it will change the value of maxprof and
     the row variable will take the row value, this is done continuously until the data runs out 
     (because awk is looping until the data runsout), then after getting the data, 
     we print it with 
     The last transaction with the largest * Transaction ID * with a percentage of *Profit Percentage *%.
     and in the end we get the data from Laporan-TokoShiSop.tsv and passing the result to Hasil.txt 
     without overwrite the data
     
<p align="center"><img width="531" alt="Screen Shot 2021-04-04 at 02 17 45" src="https://user-images.githubusercontent.com/73428164/113489038-f2ffae00-94eb-11eb-8d3c-fe7f01e3f7ce.png"></p>
     
     and here's the result : 
     
<p align="center"><img width="623" alt="Screen Shot 2021-04-04 at 02 18 44" src="https://user-images.githubusercontent.com/73428164/113489060-1591c700-94ec-11eb-92ad-849823382277.png"></p>

     


b). Clemong has a promotional plan in Albuquerque using the MLM method. Therefore, Clemong needs a list of customer names on the 2017 transaction in Albuquerque.

     
<p align="center"><img width="645" alt="Screen Shot 2021-04-04 at 02 42 22" src="https://user-images.githubusercontent.com/73428164/113489621-6fe05700-94ef-11eb-9c2d-aa4b735c1fed.png"></p>

     
     same as in number 2a, for 2b we use LC_ALL = C too.
     then we call the awk function and declare a field 
     separator (-F) which is tab ("\t"). then we get to the 
     questions. as you wish, we want to find anyone who 
     transacted in 2017 and in albuquerque. Therefore, 
     we loop until the end of the data (this is handled 
     by the awk function itself) then we provide a parameter 
     in the form of an if condition where we will take 
     the data name ($ 7) and enter it into the array. the 
     condition is where the area ($ 10) is albuquerque and 
     (&&) the transaction year is 2017 ($ 2 ~ "2017"), 
     why use ~ because I want to find a 2017 article in 
     different data, I can't use operator == because the 
     data is not specs say 2017 (there are many 
     characters other than year, such as CA-2016-
     152156). then when we get the data and enter it into 
     the array, we will output it or print it in the 
     END section. We will output all the data that has been 
     entered into the array, so we need a for, in this case 
     I do a for with the test variable up to the array, 
     in each test loop up to the array it will issue the names 
     in the array. then for the above process we take the 
     data from the TokoShiSop.tsv-report and pass the results 
     to Hasil.txt without overwriting the existing data.
     
     for the result : 
     
<p align="center"><img width="187" alt="Screen Shot 2021-04-04 at 02 43 09" src="https://user-images.githubusercontent.com/73428164/113489628-7f5fa000-94ef-11eb-9a34-e629aecd9505.png"></p>

     
c). TokoShiSop focuses on three customer segments, among others: Home Offices, Customers, and Corporates. Clemong wants to increase sales in the customer segment that has the least sales. Therefore, Clemong needs a customer segment and the number of transactions with the least amount of transactions.

<p align="center"><img width="223" alt="Screen Shot 2021-04-04 at 02 56 26" src="https://user-images.githubusercontent.com/73428164/113489948-5b9d5980-94f1-11eb-8af9-51438a548332.png"></p>

     for 2c numbers, just like the previous numbers, we use LC_ALL = C, awk function, tab separator field, and 
     begin end. Entering the question, asking to find the least sales in the segment (Corporate, Consumer, Home 
     Office). so we have to count how many of these names appear in the $ 8 column identifying how often to make 
     sales to that segment. 
     
<p align="center"><img width="316" alt="Screen Shot 2021-04-04 at 03 01 25" src="https://user-images.githubusercontent.com/73428164/113490058-0ca3f400-94f2-11eb-8b24-7c30ef30019b.png"></p>

     
     therefore we provide if and counter parameters for the awk loop, but before that we set the minseg as Corporate           
     first, this condition just for the initial value, in can be replaced by the others. 
     ie if $ 8 (segment) == Corporate, then the cast counter will increase, and if $ 8 == Consumer counter cons 
     will increase, and finally if $ 8 == Home Office then the home counter will increase, then to find the least 
     amount we will do comparison after getting data from the counter. if corporate <consumer or (| |) corporate 
     < home office, then we will fill in the min variable with the counter that we got earlier with the corp 
     variable, and the minseg variable with the string "Corporate". This applies to consumers as well as the home 
     office
     
     

     after getting the data from these conditions. we have got the smallest values ​​in the min and minseg 
     variables. therefore we will issue or print by calling 2 varible
     
<p align="center"><img width="711" alt="Screen Shot 2021-04-04 at 03 01 48" src="https://user-images.githubusercontent.com/73428164/113490070-1c233d00-94f2-11eb-84cf-990538724a07.png">
<img width="246" alt="Screen Shot 2021-04-04 at 03 02 29" src="https://user-images.githubusercontent.com/73428164/113490084-3230fd80-94f2-11eb-91c3-cc66e0088eec.png"></p>

     and we get the data from TokoShiSop.tsv-report and passing it to Hasil.txt without overwrite the data that has already exist in 
     Hasil.txt
     
     
     and here's for the result : 
     
<p align="center"><img width="723" alt="Screen Shot 2021-04-04 at 03 03 47" src="https://user-images.githubusercontent.com/73428164/113490114-61e00580-94f2-11eb-8269-7ac1186939e9.png"></p>



     
d). TokoShiSop divides the sales region into four parts: Central, East, South, and West. Manis wants to find the region that has the least total profit and the total profit of that region.

     
     
     
<p align="center"><img width="206" alt="Screen Shot 2021-04-04 at 10 42 02" src="https://user-images.githubusercontent.com/73428164/113497921-662c1300-9532-11eb-87d6-194d7555b5f3.png"></p>

     for 2d numbers, like previous numbers use LC_ALL = C to set output operation to default, call awk function, use tab separator field, 
     and begin end. entering the problem, we want to find the region with the lowest profit, meaning we use an array to store each data 
     region with the profit added for each region appears, in this case the array is in reg [$ 13] + = $ 21, and why use NR > 1, to avoid 
     the first row having no value but only attributes. 
     
<p align="center"><img width="167" alt="Screen Shot 2021-04-04 at 10 43 07" src="https://user-images.githubusercontent.com/73428164/113497942-8c51b300-9532-11eb-82d6-1609e20cf160.png">
</p>
    
     Entering the end function, we declare the variable min with a large value (in this 
     case the number that I declare is the largest INT number (INT_MAX). This is to initialize the number for comparison.then we do 
     loopingg with the variable a until there is a lot of data in the reg variable, Then if the value in reg [index a] is smaller than the 
     min variable, then the variable will be replaced by reg [index a] and we will create a variable to hold the name in the loop to a, 
     namely the regi variable.


<p align="center"><img width="716" alt="Screen Shot 2021-04-04 at 10 43 54" src="https://user-images.githubusercontent.com/73428164/113497955-a7bcbe00-9532-11eb-9286-e6509ad963f6.png"> <img width="185" alt="Screen Shot 2021-04-04 at 10 44 11" src="https://user-images.githubusercontent.com/73428164/113497958-b2775300-9532-11eb-9cb6-c4318b93a602.png"></p>

     and finally we will issue or print by calling the regi variable to issue the region name and the min variable for the profit.
     
     and we get the data from TokoShiSop.tsv-report and passing it to Hasil.txt without overwrite the data that has already exist in 
     Hasil.txt
     
     and here's for the result:
     
<p align="center"><img width="714" alt="Screen Shot 2021-04-04 at 10 45 25" src="https://user-images.githubusercontent.com/73428164/113497978-de92d400-9532-11eb-9588-b8a66c8497f5.png"></p>

     
e). You are expected to be able to create a script that will produce a file “Hasil.txt” 

     For the all file that produce in Hasil.txt
     
     here's the Hasil.txt : 
     
<p align="center"><img width="797" alt="Screen Shot 2021-04-04 at 10 46 41" src="https://user-images.githubusercontent.com/73428164/113497988-0c781880-9533-11eb-81d2-1fd9d48bcd49.png"></p>

     
## Question 3:
Kuuhaku is a person who really likes to collect digital photos, but Kuuhaku is also a lazy person so he doesn't want to bother looking for photos, besides that he is also shy, so he doesn't want anyone to see his collection, unfortunately, he has a friend named Steven who made being nosy his primary responsibility. Kuuhaku then had an idea, a way so that Steven won't be able to see his collection. To make his life easier, he is asking for your help. The idea is:

a) Make a script to download 23 images from "https://loremflickr.com/320/240/kitten" and save the logs to the file "Foto.log". Since the downloaded images are random, it is possible that the same image is downloaded more than once, therefore you have to delete the same image (no need to download new images to replace them). Then save the images with the name "Kumpulan_XX" with consecutive numbers without missing any number (example: Koleksi_01, Koleksi_02, ...)

   In the question (a) we need to download 23 images from given link and save the logs to the file Foto.log.  First, we make a for loop until 23 iterations to download the        images. -O for output file and their filename. And -a to append each of downloaded image log to Foto.log.
   
     for ((img=1; img<=23; img=img+1))
     do 
          wget -O "Kumpulan_$img" https://loremflickr.com/320/240/kitten -a Foto.log
          
   Because we need to delete duplicate image, we find that there is a same line from Foto.log for duplicate image. First, we take the unique argument of the image and store it    to tmploc.txt. After that, store the last line of tmploc.txt to loc.txt because in tmploc.txt will be overwritten for each iteration.
  
     awk -F / '/Location: / {print $4}' Foto.log > tmploc.txt
     awk 'END{print}' tmploc.txt >> loc.txt
     
   To check whether there is duplicate or not we use 'uniq -d' to count only duplicate line.
   
     count=$(sort loc.txt | uniq -d)
     
   If there is duplicate. First, delete last line of loc.txt because we don’t need duplicate line. Then, remove the image file of current running iteration.
     
     if [[ $count>0 ]]
     then
          sed -i '$d' loc.txt
          rm "Kumpulan_$img"
     
     fi
     
   Lastly, remove tmploc.txt and loc.txt.
   
     rm tmploc.txt
     rm loc.txt
   
b) Because Kuuhaku is too lazy to run the script manually, he also asks you to run the script once a day at 8 o'clock in the evening for some specific dates every month, namely starting the 1st every seven days (1,8, ...), as well as from the 2nd once every four days (2,6, ...). To tidy it up, the downloaded images and logs are moved to a folder named the download date with the format "DD-MM-YYYY" (example: "13-03-2023").

   For question (b) we need to automatically download the images and logs and move it to folder named the download date. The first step is same with (a) 

     #!/bin/bash

     for ((img=1; img<=23; img=img+1))
     do 
          wget -O "Kumpulan_$img" https://loremflickr.com/320/240/kitten -a Foto.log

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
     
  Make a folder with name of today’s date and move the images and Foto.log to the folder.
  
     mkdir /home/alifai/Documents/Shift1/$(date +%d-%m-%Y)
     mv Kumpulan_* /home/alifai/Documents/Shift1/$(date +%d-%m-%Y)
     mv Foto.log /home/alifai/Documents/Shift1/$(date +%d-%m-%Y)
     
  To automatically download the images and log we create a crontab.

     0 20 1-31/7,2-31/4 * * /home/alifai/Documents/Shift1/soal3b.sh

  It means “At 20:00 on every 7th day-of-month from 1 through 31 and every 4th day-of-month from 2 through 31.”

c) To prevent Kuuhaku getting bored with pictures of kittens, he also asked you to download rabbit images from "https://loremflickr.com/320/240/bunny". Kuuhaku asks you to download pictures of cats and rabbits alternately (the first one is free. example: 30th cat > 31st rabbit > 1st cat > ...). To distinguish between folders containing cat pictures and rabbit pictures, the folder names are prefixed with "Kucing_" or "Kelinci_" (example: "Kucing_13-03-2023").
     
     #3c
     
d) To secure his Photo collection from Steven, Kuuhaku asked you to create a script that will move the entire folder to zip which is named "Koleksi.zip" and lock the zip with a password in the form of the current date with the format "MMDDYYYY" (example: "03032003").

     #3d
     
e) Because kuuhaku only met Steven during college, which is every day except Saturday and Sunday, from 7 am to 6 pm, he asks you to zip the collection during college, apart from the time mentioned, he wants the collection unzipped. and no other zip files exist.

     #3e

