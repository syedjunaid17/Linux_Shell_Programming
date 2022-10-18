#!/bin/bash

#backup all .pdf files from prod location: /home/junaid04/prod to backup destination
#script takes one argument:
#destination path - which needs to end with /backup e.g. /home/junaid04/backup
PROD=/home/junaid04/prod

#argument check
if [ $# -ne 1 ]; then
          echo "only one argument is needed, run $0 destination-path"
          exit 1
fi

#destination path check 
DESTINATION=$1
if [[ $DESTINATION != */backup ]]; then
    echo "wrong destination path, destination path must ends with /backup"
     exit 2
fi

#create destination folder
DATE=$(date +%Y-%m-%d_%H_%M_%S)
mkdir -p $DESTINATION/$DATE

#copy from prod to destination
cp $PROD/*.pdf $DESTINATION/$DATE 

#test exit status of copy command
if [ $? -eq 0 ]; then 
         echo backup OK
else 
         echo backup failed
fi

