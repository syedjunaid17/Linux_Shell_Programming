#!/bin/bash

COUNT=1
#for ARG in "$@"

for ARG in "$*"

do
         echo "$COUNT. argument: $ARG"
         let COUNT++
done
