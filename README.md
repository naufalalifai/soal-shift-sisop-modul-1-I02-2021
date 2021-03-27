# soal-shift-sisop-modul-1-I02-2021

### Member's Name
- Muhammad Naufal Alif Islami (05111942000008)
- Drigo Alexander SIhombing (05111942000020)
- Fitriana Zahirah Tsabit (05111942000011)

### Soal 1:
1. Ryujin has just been accepted as an IT support at Bukapedia. He was given the task of making daily reports for the company's internal application, ticky. There are 2 reports that he has to make, namely the report on the list of most error message ratings made by Ticky and user usage reports on the Ticky application. In order to make this report, Ryujin had to do the following:

a). Collects information from application logs contained in the syslog.log file. The information required includes: log type (ERROR / INFO), log messages, and the username on each log line. Since Ryujin finds it difficult to check one line at a time manually, he uses regex to make his job easier. Help Ryujin create the regex.
     
     #1a)
     
b). Then, Ryujin must display all error messages that appear along with the number of occurrences.

     #1b)

c). Ryujin must also be able to display the number of occurrences of the ERROR and INFO logs for each user.

     #1c)
     
After all the necessary information has been prepared, now is the time for Ryujin to write all the information into a report in the csv file format

d). All information obtained in point b is written into the error_message.csv file with the Error, Count header, which is then followed by a list of error messages and the number of occurrences is ordered based on the number of occurrence of error messages from the most.

     #1d)
     
e). All information obtained in point c is written into the user_statistic.csv file with the header Username, INFO, ERROR sorted by username in ascending order.

     #1e)
