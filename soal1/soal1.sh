#1b

grep ERROR.* -o syslog.log
echo Sum = $(grep ERROR.* -c syslog.log)
