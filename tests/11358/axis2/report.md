# ecmc motion system test report

* Data file   : axis2_data.log
* Date        : Sun Dec 13 20:09:11 CET 2020
* Author      : anderssandstrom

# Sensor calibration
Test were performed with three position feedback systems:

1: Open loop counter of stepper (used for control)
2: Resolver (included in the slitsets)
3: Laser triangulation sensor (external verification system)

## Open loop step counter of stepper
The stepper motors was run in open loop during all the tests. The openloop step counter
reflects the actual position of the ecmc contolsystem.

## Resolver:
Conversion data (to open loop coord syst):
1. Scale factor : 1
2. Offset factor : 12.2027mm

## External verification system
Micro-Epsilon ILD2300 sensor:
1. Type : Laser triangulation
2. Range : 50mm (mounted to cover the center of the slitset stroke)

Conversion data (to open loop coord syst):
1. Scale factor : -1 (measure from top)
2. Offset factor : 60.4885mm

# Limit Switch Performance
## Low Limit Engage Position
Test | Openloop [mm]| Resolver [mm]|
--- | --- | --- |
1 | -0.4573 | -0.4525
2 | -0.4572 | -0.4525
3 | -0.4505 | -0.4464
4 | -0.4505 | -0.4464
5 | -0.4497 | -0.4457
6 | -0.4588 | -0.4540
7 | -0.4580 | -0.4533
8 | -0.4521 | -0.4478
9 | -0.4527 | -0.4485
10 | -0.4595 | -0.4547
AVG | -0.4546 | -0.4502
STD | 0.0037 | 0.0034
