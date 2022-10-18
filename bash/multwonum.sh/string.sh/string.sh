#!/bin/bash

STR1="hello buddy"
STR2="HELLO BUDDY"
STR3="HELLO BUDDY"
if [ "$STR1"="$STR2" ]; then
               echo equal
else
               echo not equal 
fi

if [[ $STR2 = $STR3 ]]; then
          echo equal 
else
           echo not equal
fi
