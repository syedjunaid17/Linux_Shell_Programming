#!/bin/bash

while getopts a:b:cd param; do
  case $param in
    a) echo " "
       echo "parameter 'a' with argument: $OPTARG"
       ;;
    b) echo "parameter 'b' with arguments: $OPTARG"
       ;;
    c) echo "parameter 'c' with selected (no colon, no argument)"
       ;;
    d) echo "parameter 'd' selected (no colon, no argument)"
       ;;
 esac

done
