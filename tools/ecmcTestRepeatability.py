#!/usr/bin/env python

import epics
import os
import sys
import time
import math
import unittest
import ecmcSlitDemoLib

testNumberBase=30
homedPvSuffix='-homed'
testLoops = 10

if len(sys.argv)!=6:
  print("python ecmcTestRepeatability.py <motorPvNamepv> <testnumberpv> <from> <to> <velo>")
  print("python ecmcTestRepeatability.py IOC:Axis1 IOC:TestNumber 0 100 25")
  sys.exit()


motorPvName = sys.argv[1]
testPvname  = sys.argv[2]
motorHomedPvName = motorPvName + homedPvSuffix
fromPos = float(sys.argv[3])
toPos = float(sys.argv[4])
velo  = float(sys.argv[5]) 
homedPv = epics.PV(motorHomedPvName)
testPv = epics.PV(testPvname)

if homedPv is None:
   print ("Invalid homed pv") 

if testPv is None:
   print ("Invalid testPv") 

if not homedPv.get():
   print ("Motor not homed. Test will abort.")


maxPos = toPos
if fromPos > maxPos:
  maxPos = fromPos

minPos = fromPos
if toPos < minPos:
  minPos = toPos

testPv.put(testNumberBase)

hepp = input('Start data acquisition now. Push enter when ready.\n')
    
#Disable softLimits
print( 'Set softlimits')
ecmcSlitDemoLib.setSoftLowLimt(motorPvName, minPos -10)
ecmcSlitDemoLib.setSoftHighLimt(motorPvName, maxPos +10)

print ('Disable amplifier')
ecmcSlitDemoLib.setAxisEnable(motorPvName, 0)
time.sleep(1) #ensure that enabled goes down
error=ecmcSlitDemoLib.getAxisError(motorPvName,1)

#Reset error on all axis
print ('Reset error axes.')
ecmcSlitDemoLib.setAxisReset(motorPvName, 1)
time.sleep(0.5)
ecmcSlitDemoLib.setAxisReset(motorPvName, 0)

print ('Enable amplifier')
ecmcSlitDemoLib.setAxisEnable(motorPvName, 1)
time.sleep(1) #ensure that enabled goes down
error=ecmcSlitDemoLib.getAxisError(motorPvName,1)
counter = 0

timeOut = (maxPos-minPos)/velo*1.5

while counter < testLoops:
  #run gap and center motorPvName to 0
  
  print ('Move axis to position ' + str(fromPos) + ' (cycles = ' + str(counter) + ').')
  done=ecmcSlitDemoLib.moveAxisPosition(motorPvName,fromPos,velo,timeOut)
  if not done:
    print (motorPvName + " failed to position.")
    sys.exit()

  print ('Move axis to position ' + str(toPos) + ' (cycles = ' + str(counter) + ').')
  done=ecmcSlitDemoLib.moveAxisPosition(motorPvName,toPos,velo,timeOut)
  if not done:
    print( motorPvName + " failed to position.")
    sys.exit()
  counter = counter +1
  time.sleep(1)
  testPv.put(testNumberBase+counter)

time.sleep(1)
testPv.put(testNumberBase)

print("Test done!")
