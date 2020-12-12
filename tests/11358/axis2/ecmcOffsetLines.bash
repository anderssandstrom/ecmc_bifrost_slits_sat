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

ARGOK=0
if [ "$#" -eq 1 ]; then
    FILE="-"
    OFFSET=$1
    ARGOK=1
fi
if [ "$#" -eq 2 ]; then
    FILE=$1
    OFFSET=$2
    ARGOK=1
fi

if [ "$ARGOK" -ne 1 ]; then
  echo "ecmcOffsetData: Wrong arg count..."
  exit 1  
fi

#while read line
#do
#  LINE=$( echo "$line" | awk -v CONVFMT=%.17g -v offset=${OFFSET} '{$NF+=offset; print $0}')
#  echo "${LINE}"
#done < "${FILE}"

DATA=$(cat ${FILE} | awk -v CONVFMT=%.17g -v offset=${OFFSET} '{$NF+=offset; print $0}')
echo "${DATA}"
