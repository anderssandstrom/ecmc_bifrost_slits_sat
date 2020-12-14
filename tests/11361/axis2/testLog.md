# Test log template

# 0 Inspection

## General impression

### Mechanical
2. Limits very close to mech stop. Need to adjust upper to get ome space.
4. Maybe coupling not tightened (axis1).
5. Limits not bent


### Electrical
Check electrical connections.

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


1. Very minot scratching/grinding sound
2. Limits very close to mech stops. Readjusted upper to get some more margin
3. Use Velocity of 0.75mm/s for tests
4. Use same current as JJXRay



## Data logging:
```
camonitor -g10 -n IOC_TEST:ec0-s4-EL7211-Enc-PosAct IOC_TEST:Axis1-PosAct IOC_TEST:ec0-s5-OptoILD2300_50mm-AI1 IOC_TEST:TestNumber IOC_TEST:ec0-s2-EL1808-BI1 IOC_TEST:ec0-s2-EL1808-BI2 IOC_TEST:Axis1-PosSet | tee axis2_data.log

cat axisx_data.log | python ~/projects/ecmccomgui/pyDataManip/plotCaMonitor.py &
```

