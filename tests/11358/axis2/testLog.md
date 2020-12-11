# Test log template

# 0 Inspection

## General impression

### Mechanical
1. Some Lemo nuts loose
2. Limits very close to mech stop.
3. Carriage parked into the lower mech stop (no air between).
4. Maybe coupling not tightened.
5. Upper limit switch lever looks like it has been bent. 

### Electrical
Test | Check| Verified| 
--- | --- | --- |
1  | Motor phase A resistance | OK
2  | Motor phase B resistance | OK
3  | Resolver stator sin resistance | OK
4  | Resolver stator cos resistance | OK
5  | Resolver rotor resistance | OK
6  | Low lim | OK
7  | High lim | OK
8  | Micro epsilon sensor adjusted | OK

## First test run

1. Small scratching sound
2. Limits very close to mech stops. Readjusted to getr some more margin
3. Use Velocity of 0.75mm/s for tests

## 1 Resolver Test
Micro epsilon not used
```
python ecmcTestResolver.py IOC_TEST:Axis1 IOC_TEST:TestNumber 0.125 8 0.5
```
## 2 Limit accuarcy

### 2.1 Forward accuracy
Micro epsilon not used

```
python ecmcTestLimitFwd.py IOC_TEST:Axis1 IOC_TEST:TestNumber 1 0.5
```

### 2.1 Reverse accuracy
Micro epsilon not used

```
python ecmcTestLimitBwd.py IOC_TEST:Axis1 IOC_TEST:TestNumber 1 0.5

```

## 3 Repeatability test:

## From below (positive)
```
python ecmcTestRepeatability.py IOC_TEST:Axis1 IOC_TEST:TestNumber 14.5 15 0.5 3100
```

## From above (negative)
```
python ecmcTestRepeatability.py IOC_TEST:Axis1 IOC_TEST:TestNumber 15.5 15 0.5 3200
```

## Data logging:
```
camonitor -g10 -n IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct IOC_TEST:ec0-s5-OptoILD2300_50mm-AI1 IOC_TEST:TestNumber IOC_TEST:ec0-s2-EL1808-BI1 IOC_TEST:ec0-s2-EL1808-BI2 IOC_TEST:ec0-s2-EL1808-BI2 IOC_TEST:Axis1-PosSet | tee axis2_data.log

cat axisx_data.log | python ~/projects/ecmccomgui/pyDataManip/plotCaMonitor.py &
```

