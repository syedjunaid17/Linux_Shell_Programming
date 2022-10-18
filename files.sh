#!/bin/bash

# ./files.sh [ -l location] [--location location] [-e extension] [--extension extension] [-h] [--help]

function usage() {
 echo "USAGE: $0 [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]"
 echo "Examples:"
 echo "$0 -l /etc/ -e txt -s"
 echo "$0 -e img --stats"
 echo
 exit 1
}

while [ $# -gt 0 ]
do
 case $1 in
  -l|--location )
   LOCATION="$2"
   if ! [ -d "$LOCATION" ]; then
    usage
   fi
   shift
   ;;

-e|--extension )
  EXT="$2"
  shift
  shift
  ;;

-s|--stats )
  shift
  ;;

-h|--help )
  shift
  usage
  ;;

  * )
     usage
     ;;
 esac


done
