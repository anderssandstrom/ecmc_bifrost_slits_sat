#!/bin/bash
# 
# This script finds the test number and returns a certain count of data according to a filter.
#
# Arg 1 File
# Arg 2 TestNumber PV filter   IOC_TEST:TestNumber
# Arg 3 TestNumber             1100
# Arg 4 Data Pv filter         IOC_TEST:ec0-s4-EL7211-Enc-PosAct, IOC_TEST:Axis1-PosAct, IOC_TEST:ec0-s5-OptoILD2300_50mm-AI1
# Arg 5 Data count before test 50 
#
# Example: Return 50 lines of EL7211 data just before test 1100 flag is set
# bash ecmcGetDataBeforeTest.bash axis2_data.log IOC_TEST:TestNumber 10 IOC_TEST:ec0-s4-EL7211-Enc-PosAct 50
#
# Author: Anders Sandström, anders.sandstrom@esss.se
#


FILE=$1
TESTPV=$2
TESTNUM=$3
DATAPV=$4
DATACOUNT=$5

echo "FILE      = ${FILE}"
echo "TESTPV    = ${TESTPV}"
echo "TESTNUM   = ${TESTNUM}"
echo "DATAPV    = ${DATAPV}"
echo "DATACOUNT = ${DATACOUNT}"

# IOC_TEST:Axis1-PosAct          2020-12-11 12:47:59.380804 10.00078125  
# IOC_TEST:TestNumber 2020-12-11 12:57:31.157767 4008

#cat ${FILE} | grep '${TESTPV}\|${DATAPV}'
# Trim spaces: awk '{$1=$1;print}'
#DATA=$(cat ${FILE} | grep '${TESTPV}|${DATAPV}' | awk '{$1=$1;print}' |  grep -B${DATACOUNT} '^${TESTPV}*.${TESTNUM}')
DATA=$(cat ${FILE} | grep "${TESTPV}\|${DATAPV}" | awk '{$1=$1;print}' | grep -B${DATACOUNT} "^${TESTPV}.* ${TESTNUM}$")

echo "${DATA}"

# ^>.*</li>$
