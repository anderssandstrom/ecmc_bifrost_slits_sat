# ecmc motion system test report

* Data file   : ../../ecmc_bifrost_slits_sat/tests/11358/axis1/axis1_data.log
* Date        : Tue Dec 15 11:04:27 CET 2020
* Author      : anderssandstrom

# Sensor calibration

## Open loop step counter of stepper

The stepper motors was run in open loop during all the tests. The openloop step counter
reflects the actual position of the contolsystem.

## Resolver:

Conversion data (to open loop coord syst):

1. Scale factor : 1
2. Offset factor : 83.1304mm

## External verification system, Micro-Epsilon ILD2300 sensor

Conversion data (to open loop coord syst):

1. Scale factor : -1 (measure from top)
2. Offset factor : 59.5035mm

# Limit Switch Performance

## Low Limit Engage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | -0.4996 | -0.5002 | -0.0006
2 | -0.5304 | -0.5230 | 0.0074
3 | -0.5371 | -0.5298 | 0.0073
4 | -0.5296 | -0.5223 | 0.0073
5 | -0.5236 | -0.5173 | 0.0063
6 | -0.5386 | -0.5311 | 0.0075
7 | -0.5304 | -0.5229 | 0.0075
8 | -0.5469 | -0.5392 | 0.0077
9 | -0.5251 | -0.5184 | 0.0067
10 | -0.5402 | -0.5326 | 0.0076
AVG | -0.5301 | -0.5237 | -0.0065
STD | 0.0123 | 0.0102 | 0.0021

## Low Limit Disengage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | -0.0090 | -0.0059 | 0.0031
2 | -0.0166 | -0.0116 | 0.0050
3 | -0.0181 | -0.0127 | 0.0054
4 | -0.0180 | -0.0127 | 0.0053
5 | -0.0212 | -0.0150 | 0.0061
6 | -0.0159 | -0.0110 | 0.0049
7 | -0.0143 | -0.0098 | 0.0045
8 | -0.0152 | -0.0104 | 0.0048
9 | -0.0188 | -0.0131 | 0.0057
10 | -0.0182 | -0.0127 | 0.0055
AVG | -0.0165 | -0.0115 | -0.0050
STD | 0.0031 | 0.0024| 0.0008

## High Limit Engage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | 63.7181 | 63.7270 | 0.0088
2 | 63.7212 | 63.7295 | 0.0083
3 | 63.7204 | 63.7289 | 0.0085
4 | 63.7129 | 63.7219 | 0.0090
5 | 63.7137 | 63.7227 | 0.0090
6 | 63.7137 | 63.7227 | 0.0090
7 | 63.7227 | 63.7307 | 0.0080
8 | 63.7106 | 63.7198 | 0.0092
9 | 63.7106 | 63.7199 | 0.0092
10 | 63.7106 | 63.7199 | 0.0093
AVG | 63.7154 | 63.7243 | -0.0089
STD | 0.0045 | 0.0041 | 0.0004

## High Limit Disengage Position

Test | Openloop [mm]| Resolver [mm]| Diff [mm]
--- | --- | --- |--- |
1 | 63.1546 | 63.1490 | -0.0056
2 | 63.1486 | 63.1401 | -0.0085
3 | 63.1456 | 63.1356 | -0.0100
4 | 63.1441 | 63.1333 | -0.0108
5 | 63.1470 | 63.1378 | -0.0092
6 | 63.1456 | 63.1356 | -0.0100
7 | 63.1411 | 63.1287 | -0.0124
8 | 63.1471 | 63.1378 | -0.0093
9 | 63.1426 | 63.1309 | -0.0117
10 | 63.1419 | 63.1297 | -0.0121
AVG | 63.1458 | 63.1359 | 0.0099
STD | 0.0037 | 0.0057| -0.0019

# Repeatability

## Target Position 15 Positive and Negative Direction

Test | Resolver Pos [mm] | Resolver Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 15.0006 | 14.9997 | 0.0008
2 | 15.0005 | 14.9997 | 0.0008
3 | 15.0005 | 14.9997 | 0.0008
4 | 15.0005 | 14.9997 | 0.0008
5 | 15.0005 | 14.9997 | 0.0008
6 | 15.0005 | 14.9997 | 0.0008
7 | 15.0005 | 14.9997 | 0.0008
8 | 15.0005 | 14.9997 | 0.0008
9 | 15.0005 | 14.9997 | 0.0008
10 | 15.0005 | 14.9997 | 0.0008
AVG | 15.0005 | 14.9997 | 0.0008
STD | 0.0000 | 0.0000 | -0.0000

Test | ILD2300 Pos [mm] | ILD2300 Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 15.0423 | 15.0352 | 0.0071
2 | 15.0407 | 15.0352 | 0.0055
3 | 15.0403 | 15.0346 | 0.0057
4 | 15.0397 | 15.0339 | 0.0057
5 | 15.0388 | 15.0344 | 0.0045
6 | 15.0386 | 15.0333 | 0.0053
7 | 15.0380 | 15.0327 | 0.0053
8 | 15.0368 | 15.0325 | 0.0043
9 | 15.0372 | 15.0323 | 0.0049
10 | 15.0360 | 15.0323 | 0.0037
AVG | 15.0388 | 15.0336 | 0.0052
STD | 0.0018 | 0.0011 | 0.0007

## Target Position 35 Positive and Negative Direction

Test | Resolver Pos [mm] | Resolver Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 35.0008 | 34.9998 | 0.0009
2 | 35.0007 | 34.9998 | 0.0009
3 | 35.0007 | 34.9998 | 0.0009
4 | 35.0008 | 34.9998 | 0.0010
5 | 35.0008 | 34.9998 | 0.0010
6 | 35.0008 | 34.9998 | 0.0010
7 | 35.0008 | 34.9998 | 0.0009
8 | 35.0008 | 34.9998 | 0.0010
9 | 35.0008 | 34.9998 | 0.0009
10 | 35.0008 | 34.9998 | 0.0010
AVG | 35.0008 | 34.9998 | 0.0010
STD | 0.0000 | 0.0000 | 0.0000

Test | ILD2300 Pos [mm] | ILD2300 Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 35.0019 | 34.9976 | 0.0043
2 | 35.0025 | 34.9968 | 0.0057
3 | 35.0019 | 34.9966 | 0.0053
4 | 35.0000 | 34.9968 | 0.0033
5 | 35.0011 | 34.9982 | 0.0029
6 | 35.0004 | 34.9968 | 0.0037
7 | 35.0002 | 34.9982 | 0.0020
8 | 34.9994 | 34.9976 | 0.0018
9 | 35.0000 | 34.9978 | 0.0022
10 | 35.0000 | 34.9986 | 0.0014
AVG | 35.0008 | 34.9975 | 0.0033
STD | 0.0010 | 0.0007 | 0.0003

## Target Position 55 Positive and Negative Direction

Test | Resolver Pos [mm] | Resolver Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 55.0010 | 55.0000 | 0.0010
2 | 55.0010 | 55.0000 | 0.0010
3 | 55.0010 | 55.0000 | 0.0010
4 | 55.0010 | 55.0000 | 0.0010
5 | 55.0010 | 55.0000 | 0.0010
6 | 55.0010 | 55.0000 | 0.0010
7 | 55.0010 | 55.0000 | 0.0010
8 | 55.0010 | 55.0000 | 0.0010
9 | 55.0010 | 55.0000 | 0.0010
10 | 55.0010 | 55.0000 | 0.0010
AVG | 55.0010 | 55.0000 | 0.0010
STD | 0.0000 | 0.0000 | -0.0000

Test | ILD2300 Pos [mm] | ILD2300 Neg [mm] | Diff [mm]
--- | --- | --- | --- |
1 | 54.9953 | 54.9910 | 0.0043
2 | 54.9949 | 54.9910 | 0.0039
3 | 54.9951 | 54.9908 | 0.0043
4 | 54.9933 | 54.9904 | 0.0029
5 | 54.9931 | 54.9902 | 0.0029
6 | 54.9929 | 54.9898 | 0.0031
7 | 54.9926 | 54.9894 | 0.0033
8 | 54.9924 | 54.9894 | 0.0031
9 | 54.9922 | 54.9890 | 0.0033
10 | 54.9916 | 54.9888 | 0.0029
AVG | 54.9933 | 54.9900 | 0.0033
STD | 0.0012 | 0.0008 | 0.0004

## Resolver Value Distribution

Measured at 8 positions offset by 45deg resolver shaft angle. The distrubution values are based on 75 values at each location.

Test | Setpoint [mm] | Resolver AVG[mm] | Resolver STD[mm]
--- | --- | --- | --- |
1 | 36.12422 | 36.10490 | 0.00001
2 | 36.24922 | 36.25010 | 0.00001
3 | 36.37422 | 36.35520 | 0.00002
4 | 36.49922 | 36.50030 | 0.00001
5 | 36.62422 | 36.60490 | 0.00001
6 | 36.74922 | 36.75040 | 0.00001
7 | 36.87422 | 36.85520 | 0.00002
8 | 36.99922 | 37.00020 | 0.00001

## Accuracy based on resolver and ILD2300 sensor

Measured at 12 positions offset by 5mm over the entire actuator stroke.

Test | Setpoint [mm] | Resolver [mm] | ILD2300 [mm]
--- | --- | --- | --- |
1 | 5.0000 | 5.0005 | Out of range
2 | 10.0000 | 10.0005 | 10.0064
3 | 15.0000 | 15.0005 | 14.9991
4 | 20.0000 | 20.0006 | 20.0036
5 | 25.0000 | 25.0006 | 25.0299
6 | 30.0000 | 30.0007 | 30.0086
7 | 35.0000 | 35.0007 | 34.9674
8 | 40.0000 | 40.0009 | 39.9680
9 | 45.0000 | 45.0009 | 44.9642
10 | 50.0000 | 50.0009 | 49.9732
11 | 55.0000 | 55.0010 | 54.9696
12 | 60.0000 | 60.0010 | 59.9578

## Accuracy based on resolver and ILD2300 sensor

Measured at 12 positions offset by 5mm over the entire actuator stroke.

Test | Setpoint [mm] | Resolver [mm] | ILD2300 [mm]
--- | --- | --- | --- |
1 | 60.0000 | 60.0003 | 59.9680
2 | 55.0000 | 55.0002 | 54.9790
3 | 50.0000 | 50.0001 | 49.9749
4 | 45.0000 | 45.0003 | 44.9638
5 | 40.0000 | 40.0000 | 39.9738
6 | 35.0000 | 35.0002 | 34.9733
7 | 30.0000 | 30.0001 | 30.0090
8 | 25.0000 | 25.0001 | 25.0330
9 | 20.0000 | 20.0003 | 19.9973
10 | 15.0000 | 14.9999 | 15.0009
11 | 10.0000 | 10.0002 | 10.0007
12 | 5.0000 | 4.9998 | Out of range