# ecmc motion system test report

* Data file   : axis2_data.log
* Date        : Sat Dec 12 22:37:21 CET 2020
* Author      : anderssandstrom

# Sensors
Test were performed with two position feedback systems:
1: Open loop counter of stepper (used for control)
2: Resolver (included in the slitsets)
3: Laster triangulation sensor (external verification system)

## Open loop counter of stepper
The stepper motors was run in open loop during all the tests. The openloop step counter, therefore,
reflect the actual position of the ecmc contolsystem.

## Resolver:
Conversion data (to open loop coord syst)
1. Scale factor : 1
2. Offset factor : 12.2027mm

## External verification system
A Micro-Epsilon ILD2300 sensor is used as external verification system:
1. Type : Laser triangulation
2. Range : 50mm (mounted to cover the center of the slitset stroke)

Conversion data (to open loop coord syst)
1. Scale factor : -1 (measure from top)
2. Offset factor : 60.4885mm

