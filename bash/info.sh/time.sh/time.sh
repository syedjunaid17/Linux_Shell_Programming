#!/bin/bash
#start time measurement from here
START=$(date +%s)
CURRENT_DIRECTORY=$(pwd)
sleep 4
END=$(date +%s)

#end time measurement

DIFFERENCE=$((END-START))
echo
echo time elapsed: $DIFFERENCE second.

