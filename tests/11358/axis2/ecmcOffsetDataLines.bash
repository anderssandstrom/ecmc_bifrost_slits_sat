#!/bin/bash
# 
# Offset data in a camonitor text line
#
# Arg 1 Offset value

# Example:Offset all lines from stdin with 10
# bash ecmcOffestLines.bash 10 
#
# Author: Anders Sandström, anders.sandstrom@esss.se
#

if [ "$#" -eq 1 ]; then
    FILE=/dev/stdin
    OFFSET=$1
fi
if [ "$#" -eq 2 ]; then
    FILE=$1
    OFFSET=$2
fi

while read line
do
  LINE=$( echo "$line" | awk -v CONVFMT=%.8g -v offset=${OFFSET} '{$NF+=offset; print $0}')
  echo "${LINE}"
done < "${FILE}"
