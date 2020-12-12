#!/bin/bash
# 
# Main script for processing data for bifrost slitset SAT.
#
# Arg 1 File
#
# Author: Anders Sandström, anders.sandstrom@esss.se
#
# Data examples:
# IOC_TEST:Axis1-PosAct          2020-12-11 12:47:59.380804 10.00078125  
# IOC_TEST:TestNumber 2020-12-11 12:57:31.157767 4008
# IOC_TEST:ec0-s4-EL7211-Enc-PosAct 2020-12-11 12:45:50.390806 -12.14605904  
# IOC_TEST:Axis1-PosSet          2020-12-11 12:45:50.390806 0.053556875  
# IOC_TEST:ec0-s5-OptoILD2300_50mm-AI1 2020-12-11 12:47:59.400804 50.498368  
#

if [ "$#" -ne 1 ]; then
   echo "main: Wrong arg count..."
   exit 1 
fi

FILE=$1
TRIGGPV="IOC_TEST:TestNumber"
TRIGGVAL="1001"
DATAPV="IOC_TEST:ec0-s4-EL7211-Enc-PosAct"
DATACOUNT="10"

echo "FILE      = ${FILE}"
echo "TRIGGPV   = ${TRIGGPV}"
echo "TRIGGVAL  = ${TRIGGVAL}"
echo "DATAPV    = ${DATAPV}"
echo "DATACOUNT = ${DATACOUNT}"

echo "####################################################################"
DATA=$(bash ecmcGetLinesBeforeTrigg.bash ${FILE} ${TRIGGPV} ${TRIGGVAL} ${DATAPV} ${DATACOUNT})
DATA=$(echo "${DATA}" | bash ecmcOffsetLines.bash 10.1)
echo "${DATA}"
echo "####################################################################"
DATA=$(bash ecmcGetDataBeforeTrigg.bash ${FILE} ${TRIGGPV} ${TRIGGVAL} ${DATAPV} ${DATACOUNT})
DATA=$(echo "${DATA}" | bash ecmcOffsetData.bash 10.1)
echo "${DATA}"
AVG=$(echo "${DATA}" | bash ecmcAvgData.bash)
echo "AVG= ${AVG}" 
echo "####################################################################"
DATA=$(bash ecmcGetLinesBeforeTrigg.bash ${FILE} ${TRIGGPV} ${TRIGGVAL} ${DATAPV} ${DATACOUNT})
echo "${DATA}"
echo "####################################################################"

# Find resolver offset. Reference it approx center of range (repeatabilty test at 35mm, testnumber = 3301..3310)
TRIGGVAL="3305"
DATACOUNT="50"
DATA=$(bash ecmcGetLinesBeforeTrigg.bash ${FILE} ${TRIGGPV} ${TRIGGVAL} ${DATAPV} ${DATACOUNT})
AVG=$(echo "${DATA}" | bash ecmcAvgLines.bash)
echo "Resolver Offset = ${AVG}" 
