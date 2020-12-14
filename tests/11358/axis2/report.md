# ecmc motion system test report

* Data file   : axis2_data.log
* Date        : Mon Dec 14 10:22:11 CET 2020
* Author      : dev

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
2. Offset factor : 63.1937mm

## External verification system
Micro-Epsilon ILD2300 sensor:
1. Type : Laser triangulation
2. Range : 50mm (mounted to cover the center of the slitset stroke)

Conversion data (to open loop coord syst):
1. Scale factor : -1 (measure from top)
2. Offset factor : 60.4704mm

# Limit Switch Performance
## Low Limit Engage Position
Test | Openloop [mm]| Resolver [mm]|
--- | --- | --- |
1 | -0.4423 | -0.4434
2 | -0.4507 | -0.4498
3 | -0.4775 | -0.4751
4 | -0.4708 | -0.4681
5 | -0.4798 | -0.4777
6 | -0.4618 | -0.4593
7 | -0.4685 | -0.4660
8 | -0.4588 | -0.4568
9 | -0.4543 | -0.4527
10 | -0.4813 | -0.4792
AVG | -0.4646 | -0.4628
STD | 0.0125 | 0.0117
