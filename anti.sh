#!/bin/bash

# avgdeletebademails
# routine created on 03-23-2013 12:58:00
#  routine will scan all new emails for viruses with the avg antivirus

####################### variables that must be set
# LOG FILE NAMING
   logitdirectory="/home/e-smith/files/ibays/Primary/html/serverstatus"
   logitfilename="avgdeletebademails.txt"
# DIRECTORIES TO WATCH
   directorytowatch="/home/e-smith/files/users/*/Maildir/new"
# SET THE FLAG TO 1 TO SCAN EMAILS COMING TO MAILLOG ACCOUNT
   flagscanmaillog=0
# SET DELAY TIME BEFORE THE PROGRAM STARTS
   delayatstartup=0

####################### end of variables

###################### start of functions
function getemailbasefilename() {
fullfilename=""
#emailbasefilename=""
if [ -z $1 ];then return 0;fi
fullfilename=$(echo  ${xfilename// CREATE /})
#emailbasefilename=$(echo $1 | rev)
}

function scanthefile {
     getemailbasefilename $(echo $xfilename | rev) "$xfilename"
     avgscan $fullfilename  -a --delete 1>/dev/null 2>/dev/null
     if [ ! -f "$fullfilename" ];then
     TODAY=$(date +"%Y%m%d %T")
     echo "$TODAY avgscan deleted $fullfilename" >> $logit
     fi
}
###################### end of functions



mkdir -p  $logitdirectory
chmod 755 $logitdirectory
logit=$logitdirectory/$logitfilename


sleep $delayatstartup
# THE NEXT LINE WILL RESTART THE avg service
#/etc/init.d/avgd restart 2>/dev/null 1> /dev/null
sleep 10


inotifywait -m -e create $directorytowatch 2>&1 /dev/null | \
while read xfilename 
   do
     # TEST IF THE EMAILS TO MAILLOG ACCOUNT IS TO SCANNED     
     tempstring=$(echo ${xfilename/maillog\/Maildir\//})
     if [ "$xfilename" != "$tempstring" ]
        then
        if [ $flagscanmaillog -eq 1 ]
           then
           scanthefile
        fi
     else
       scanthefile
     fi
   done
   
exit 0