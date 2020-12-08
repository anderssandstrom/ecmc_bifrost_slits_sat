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

## Stroke






# Axis 2


