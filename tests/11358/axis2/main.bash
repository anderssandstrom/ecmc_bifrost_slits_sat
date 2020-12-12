#!/bin/bash
# 
# Arg 1 File
#
# Author: Anders Sandström, anders.sandstrom@esss.se
#

#bash ecmcGetDataBeforeTest.bash axis2_data.log IOC_TEST:TestNumber 1001 IOC_TEST:ec0-s4-EL7211-Enc-PosAct 50

if [ "$#" -ne 1 ]; then
   echo "main: Wrong arg count..."
   exit 1 
fi

FILE=$1
TRIGGPV="IOC_TEST:TestNumber"
TRIGGVAL="1001"
DATAPV="IOC_TEST:ec0-s4-EL7211-Enc-PosAct"
DATACOUNT="50"

echo "FILE      = ${FILE}"
echo "TRIGGPV   = ${TRIGGPV}"
echo "TRIGGVAL  = ${TRIGGVAL}"
echo "DATAPV    = ${DATAPV}"
echo "DATACOUNT = ${DATACOUNT}"

echo "####################################################################"

DATA=$(bash ecmcGetLinesBeforeTrigg.bash ${FILE} ${TRIGGPV} ${TRIGGVAL} ${DATAPV} ${DATACOUNT})
DATA=$(echo "${DATA}" | bash ecmcOffsetLines.bash 1111.111)
echo "${DATA}"

echo "####################################################################"
DATA=$(bash ecmcGetDataBeforeTrigg.bash ${FILE} ${TRIGGPV} ${TRIGGVAL} ${DATAPV} ${DATACOUNT})
DATA=$(echo "${DATA}" | bash ecmcOffsetData.bash 10.1)
echo "${DATA}"

echo "####################################################################"
