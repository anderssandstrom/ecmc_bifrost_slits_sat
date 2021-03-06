# ecmc motion system test report

* Data file   : ../../ecmc_bifrost_slits_sat/tests/11359/axis1/axis1_data.log
* Date        : Tue Dec 15 20:30:22 CET 2020
* Author      : anderssandstrom

# Sensors

## Open loop step counter of stepper

The stepper motors was run in open loop during all the tests. The openloop step counter
reflects the actual position of the contolsystem.

## Resolver:

Conversion data (to open loop coord syst):

1. Scale factor : 1
2. Offset : 2.0011mm

## External verification system, Micro-Epsilon ILD2300 sensor

Conversion data (to open loop coord syst):

1. Scale factor : -1 (measure from top)
2. Offset : 59.6583mm

# Limit Switch Performance

## Low Limit Engage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | -0.2282 | -0.2196 | 0.0086
2 | -0.2387 | -0.2351 | 0.0036
3 | -0.2396 | -0.2362 | 0.0034
4 | -0.2372 | -0.2327 | 0.0045
5 | -0.2341 | -0.2285 | 0.0056
6 | -0.2341 | -0.2286 | 0.0056
7 | -0.2357 | -0.2307 | 0.0050
8 | -0.2357 | -0.2307 | 0.0050
9 | -0.2364 | -0.2318 | 0.0047
10 | -0.2387 | -0.2350 | 0.0037
AVG | -0.2358 | -0.2309 | -0.0050
STD | 0.0031 | 0.0045 | -0.0014
Range | 0.0114 | 0.0166

## Low Limit Disengage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | 0.0098 | 0.0142 | 0.0044
2 | 0.0084 | 0.0120 | 0.0037
3 | 0.0061 | 0.0086 | 0.0025
4 | 0.0054 | 0.0073 | 0.0019
5 | 0.0038 | 0.0052 | 0.0014
6 | 0.0098 | 0.0143 | 0.0044
7 | 0.0113 | 0.0167 | 0.0054
8 | 0.0106 | 0.0155 | 0.0049
9 | 0.0038 | 0.0052 | 0.0014
10 | 0.0068 | 0.0098 | 0.0030
AVG | 0.0076 | 0.0109 | -0.0033
STD | 0.0026 | 0.0040| -0.0014
Range | 0.0075 | 0.0115

## High Limit Engage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | 68.5137 | 68.5216 | 0.0079
2 | 68.4927 | 68.4902 | -0.0026
3 | 68.5408 | 68.5591 | 0.0183
4 | 68.4035 | 68.3879 | -0.0156
5 | 68.4455 | 68.4266 | -0.0189
6 | 68.4620 | 68.4465 | -0.0155
7 | 68.4740 | 68.4626 | -0.0113
8 | 68.4298 | 68.4103 | -0.0195
9 | 68.4410 | 68.4218 | -0.0192
10 | 68.4110 | 68.3939 | -0.0171
AVG | 68.4614 | 68.4521 | 0.0093
STD | 0.0421 | 0.0536 | -0.0114
Range | 0.1373 | 0.1712

## High Limit Disengage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | 67.1898 | 67.1698 | -0.0199
2 | 67.1916 | 67.1715 | -0.0200
3 | 67.1899 | 67.1696 | -0.0203
4 | 67.1843 | 67.1636 | -0.0207
5 | 67.1825 | 67.1622 | -0.0203
6 | 67.1834 | 67.1628 | -0.0205
7 | 67.1804 | 67.1599 | -0.0205
8 | 67.1865 | 67.1661 | -0.0204
9 | 67.1804 | 67.1600 | -0.0204
10 | 67.1813 | 67.1609 | -0.0204
AVG | 67.1850 | 67.1646 | 0.0204
STD | 0.0040 | 0.0041| -0.0001
Range | 0.0112 | 0.0116

# Repeatability

## Target Position 15 Positive and Negative Direction

Test | Resolver Pos [mm] | Resolver Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 15.0002 | 14.9979 | 0.0023
2 | 15.0002 | 14.9979 | 0.0023
3 | 15.0002 | 14.9979 | 0.0023
4 | 15.0002 | 14.9979 | 0.0023
5 | 15.0003 | 14.9979 | 0.0023
6 | 15.0003 | 14.9979 | 0.0024
7 | 15.0002 | 14.9979 | 0.0023
8 | 15.0002 | 14.9979 | 0.0023
9 | 15.0003 | 14.9979 | 0.0024
10 | 15.0003 | 14.9979 | 0.0024
AVG | 15.0002 | 14.9979 | 0.0023
STD | 0.0000 | 0.0000 | 0.0000
Range | 0.0001 | 0.0001 | 0.0001

Repeatability (Resolver): 0.0001

Test | ILD2300 Pos [mm] | ILD2300 Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 14.9478 | 14.9468 | 0.0010
2 | 14.9486 | 14.9470 | 0.0016
3 | 14.9490 | 14.9476 | 0.0014
4 | 14.9486 | 14.9474 | 0.0012
5 | 14.9486 | 14.9472 | 0.0014
6 | 14.9484 | 14.9470 | 0.0014
7 | 14.9484 | 14.9462 | 0.0022
8 | 14.9484 | 14.9468 | 0.0016
9 | 14.9484 | 14.9470 | 0.0014
10 | 14.9478 | 14.9464 | 0.0014
AVG | 14.9484 | 14.9469 | 0.0015
STD | 0.0004 | 0.0004 | -0.0001
Range | 0.0012 | 0.0014 | 0.0012

Repeatability (ILD2300): 0.0014

## Target Position 35 Positive and Negative Direction

Test | Resolver Pos [mm] | Resolver Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 35.0008 | 34.9981 | 0.0027
2 | 35.0008 | 34.9982 | 0.0027
3 | 35.0008 | 34.9982 | 0.0026
4 | 35.0008 | 34.9982 | 0.0025
5 | 35.0008 | 34.9982 | 0.0026
6 | 35.0008 | 34.9982 | 0.0026
7 | 35.0009 | 34.9983 | 0.0026
8 | 35.0009 | 34.9982 | 0.0026
9 | 35.0008 | 34.9982 | 0.0026
10 | 35.0008 | 34.9982 | 0.0026
AVG | 35.0008 | 34.9982 | 0.0026
STD | 0.0000 | 0.0000 | -0.0000
Range | 0.0001 | 0.0001 | 0.0001

Repeatability (Resolver): 0.0001

Test | ILD2300 Pos [mm] | ILD2300 Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 35.0029 | 35.0020 | 0.0008
2 | 35.0031 | 35.0004 | 0.0027
3 | 35.0008 | 34.9992 | 0.0016
4 | 35.0000 | 34.9988 | 0.0012
5 | 35.0018 | 34.9990 | 0.0029
6 | 35.0008 | 34.9986 | 0.0022
7 | 35.0024 | 34.9988 | 0.0037
8 | 35.0014 | 35.0022 | -0.0008
9 | 35.0016 | 34.9986 | 0.0031
10 | 35.0020 | 34.9990 | 0.0031
AVG | 35.0017 | 34.9997 | 0.0020
STD | 0.0009 | 0.0013 | -0.0004
Range | 0.0031 | 0.0037 | 0.0045

Repeatability (ILD2300): 0.0037

## Target Position 55 Positive and Negative Direction

Test | Resolver Pos [mm] | Resolver Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 55.0013 | 54.9987 | 0.0026
2 | 55.0013 | 54.9987 | 0.0026
3 | 55.0014 | 54.9987 | 0.0027
4 | 55.0014 | 54.9986 | 0.0028
5 | 55.0014 | 54.9987 | 0.0027
6 | 55.0013 | 54.9987 | 0.0026
7 | 55.0014 | 54.9987 | 0.0027
8 | 55.0014 | 54.9987 | 0.0027
9 | 55.0014 | 54.9986 | 0.0028
10 | 55.0014 | 54.9987 | 0.0027
AVG | 55.0014 | 54.9987 | 0.0027
STD | 0.0001 | 0.0000 | 0.0000
Range | 0.0002 | 0.0001 | 0.0002

Repeatability (Resolver): 0.0002

Test | ILD2300 Pos [mm] | ILD2300 Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 54.9722 | 54.9720 | 0.0002
2 | 54.9734 | 54.9720 | 0.0014
3 | 54.9736 | 54.9716 | 0.0020
4 | 54.9738 | 54.9730 | 0.0008
5 | 54.9734 | 54.9724 | 0.0010
6 | 54.9734 | 54.9722 | 0.0012
7 | 54.9734 | 54.9730 | 0.0004
8 | 54.9726 | 54.9732 | -0.0006
9 | 54.9736 | 54.9702 | 0.0035
10 | 54.9734 | 54.9689 | 0.0045
AVG | 54.9733 | 54.9719 | 0.0014
STD | 0.0005 | 0.0013 | -0.0008
Range | 0.0016 | 0.0043 | 0.0051

Repeatability (ILD2300): 0.0043

## Resolver Value Distribution

Measured at 8 positions offset by 45deg resolver shaft angle. The distrubution values are based on 75 values at each location.

Test | Setpoint [mm] | Resolver AVG[mm] | Resolver STD[mm]
--- | --- | --- | --- |
1 | 36.12422 | 36.1259000 | 0.0000105
2 | 36.24922 | 36.2502000 | 0.0000126
3 | 36.37422 | 36.3758000 | 0.0000149
4 | 36.49922 | 36.4997000 | 0.0000094
5 | 36.62422 | 36.6259000 | 0.0000138
6 | 36.74922 | 36.7500000 | 0.0000171
7 | 36.87422 | 36.8759000 | 0.0000123
8 | 36.99922 | 36.9996000 | 0.0000107

## Accuracy based on Resolver and ILD2300 Sensor Positive Direction

Measured at 12 positions offset by 5mm over the entire actuator stroke.

Test | Setpoint [mm] | Resolver [mm] | Diff [mm] | ILD2300 [mm] | Diff [mm]
--- | --- | --- | --- | --- | --- |
1 | 5.0000 | 5.0000 | -0.0000 | Out of range | NaN
2 | 10.0000 | 10.0000 | 0.0000 | 9.8013 | -0.1987
3 | 15.0000 | 15.0003 | 0.0003 | 14.7922 | -0.2078
4 | 20.0000 | 20.0004 | 0.0004 | 19.7706 | -0.2294
5 | 25.0000 | 25.0006 | 0.0006 | 24.7672 | -0.2328
6 | 30.0000 | 30.0006 | 0.0006 | 29.8170 | -0.1830
7 | 35.0000 | 35.0006 | 0.0006 | 34.8350 | -0.1650
8 | 40.0000 | 40.0010 | 0.0010 | 39.8007 | -0.1993
9 | 45.0000 | 45.0012 | 0.0012 | 44.8165 | -0.1835
10 | 50.0000 | 50.0013 | 0.0013 | 49.8390 | -0.1610
11 | 55.0000 | 55.0014 | 0.0014 | 54.8192 | -0.1808
12 | 60.0000 | 60.0016 | 0.0016 | 59.8348 | -0.1652
Accuracy |-|-| 0.0016 | - | 0.2328

Accuracy (Resolver): 0.0016

Accuracy (ILD2300): 0.2328

## Accuracy based on Resolver and ILD2300 Sensor Negative Direction

Measured at 12 positions offset by 5mm over the entire actuator stroke.

Test | Setpoint [mm] | Resolver [mm] | Diff [mm] | ILD2300 [mm] | Diff [mm]
--- | --- | --- | --- | --- | --- |
1 | 5.0000 | 4.9976 | -0.0024 | Out of range | NaN
2 | 10.0000 | 9.9977 | -0.0023 | 9.8013 | -0.1987
3 | 15.0000 | 14.9979 | -0.0021 | 14.7918 | -0.2082
4 | 20.0000 | 19.9980 | -0.0020 | 19.7704 | -0.2296
5 | 25.0000 | 24.9981 | -0.0019 | 24.7665 | -0.2335
6 | 30.0000 | 29.9983 | -0.0017 | 29.8155 | -0.1845
7 | 35.0000 | 34.9982 | -0.0018 | 34.8315 | -0.1685
8 | 40.0000 | 39.9983 | -0.0017 | 39.7997 | -0.2003
9 | 45.0000 | 44.9984 | -0.0016 | 44.8106 | -0.1894
10 | 50.0000 | 49.9985 | -0.0015 | 49.8410 | -0.1590
11 | 55.0000 | 54.9987 | -0.0013 | 54.8184 | -0.1816
12 | 60.0000 | 59.9988 | -0.0012 | 59.8337 | -0.1663
Accuracy |-|-| 0.0024 | - | 0.2335

Accuracy (Resolver): 0.0024

Accuracy (ILD2300): 0.2335

