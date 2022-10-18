#!/bin/bash
VAR=1

let VAR++
let VAR++
echo "var: $VAR"

let VAR++
let VAR++

#exit 5
#exit 256
echo "var: $VAR"

let VAR++
let VAR++
echo "VAR: $VAR"
exit 1
