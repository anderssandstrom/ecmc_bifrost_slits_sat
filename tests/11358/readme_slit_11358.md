# Notes for SAT of slitset 11358

## Visual inspection

1. Axis 2 seems to be run into lower mech stop. Very stange way send away an slit set.


# Axi1

## General Comments

Seem to run much harder in one part of the rev since the sound is changing. "knarrande ljud"

## Switches

1. Correct and working!


## Resolver

Check resolversignal at standstill.

```
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct | tee axis1_resolver_standstill.log
```

### Resolver at different angles 

Starts at Angle x+0:
```
angle=0
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+45:

```
angle=45
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+90:
```
angle=90
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+135:
```
angle=135
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+180:
```
angle=180
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+225:
```
angle=225
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+270:
```
angle=270
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &
```
Angle x+315:
```
angle=315
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &

```
Angle x+360:
```
angle=360
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_standstill_x${angle}deg.log
cat axis1_standstill_x${angle}deg.log |grep 7211 | tail -n200 | python ~/projects/ecmccomgui/pyDataManip/histCaMonitor.py -t "Resolver jitter at x+${angle}deg" &
```

## Motor
Motor and PT100 in same connector (7pin lemo)
Need to make own cable since no standard 7pin cable available:

```
A+ brown
A- white
B+ greeń
B- yellow

PT100+ gray
PT100- pink

```

### Motor phase resistance
Phase A 8.5Ohm OK!
Phase B 8.5Ohm OK!


### Motor first move
Config works and motor moves smooth in correct direction


### Resolver vs openloop counter
```
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct | tee axis1_resolver_openloop.log
```

Works fine!


## Switch repeatability

### Low Lim

```
camonitor IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct IOC_TEST:ec0-s2-EL1808-BI1  | tee axis1_switch_lowlim.log
```



# Axis 2


