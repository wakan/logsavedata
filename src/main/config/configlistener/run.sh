#!/bin/sh

#TODO : Etudier le -q
mosquitto_sub -h  srvMosquitto -t domminatrix/logsavedata/configure -q 1 | while read RAW_DATA
do
   rm -f /etc/logsavedata/topictosave;
   touch /etc/logsavedata/topictosave;
   echo $RAW_DATA | tee /etc/logsavedata/topictosave;
   mosquitto_pub -h srvMosquitto -t domminatrix/logsavedata/configure/resp -q 1 -m ""
	#TODO : Etudier le -q
done
