#!/bin/bash

while [  $# -gt 0 ]
do
     case "$1" in
         -h | --help )
            echo "usage $0 [-h] [--help] [-f file] [--file file]"
            shift
           # exit 1
            ;;
       -f | --file )
           FILE=$2
           if ! [ -f  "$FILE" ]; then
              echo "file does not exists"
              exit 2
            fi
            LINES=`cat "$FILE" | wc -l`
            WORDS=`cat "$FILE" | wc -w`
            CHARACTERS=`cat $FILE  | wc -m`

          echo "---------FILE: $FILE--------"
          echo "LINES: $LINES"
          echo "WORDS: $WORDS"
          echo "CHARACTERS: $CHARACTERS"
          shift
          shift
          ;;
  * )
         echo "usage: $0 [-h] [--help] [-f file] [--file file]"
         exit 1
         ;;
esac
done
