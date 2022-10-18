#!/bin/bash

if [ $# -ne 1 ]; then
    echo "exactly one argument is needed, run: $0 file-path"
     exit 1
fi

 if ! [ -f "$1" ]; then
      echo "file you have specified does not exists"
      exit 2
fi

FILENAME=$1
COUNT=1

#cat "$FILENAME" |
while read line
do
     
     echo "$COUNT: $line"
        let COUNT++
done < "$FILENAME"
