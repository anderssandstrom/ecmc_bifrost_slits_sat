# ecmc motion system test report

* Data file   : axis2_data.log
* Date        : Sun Dec 13 16:44:56 CET 2020
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
all_data.png axis2_data.log ecmcAvgData.bash ecmcAvgDataRow.bash ecmcAvgLines.bash ecmcGetDataBeforeTrigg.bash ecmcGetLinesBeforeTrigg.bash ecmcGetSwitchPosValue.bash ecmcOffsetData.bash ecmcOffsetLines.bash ecmcReport.bash ecmcReportInit.bash ecmcScaleData.bash ecmcScaleLines.bash ecmcScaleOffsetData.bash ecmcScaleOffsetLines.bash ecmcStdDataRow.bash main.bash report.md testLog.md Type : Laser triangulation
all_data.png axis2_data.log ecmcAvgData.bash ecmcAvgDataRow.bash ecmcAvgLines.bash ecmcGetDataBeforeTrigg.bash ecmcGetLinesBeforeTrigg.bash ecmcGetSwitchPosValue.bash ecmcOffsetData.bash ecmcOffsetLines.bash ecmcReport.bash ecmcReportInit.bash ecmcScaleData.bash ecmcScaleLines.bash ecmcScaleOffsetData.bash ecmcScaleOffsetLines.bash ecmcStdDataRow.bash main.bash report.md testLog.md Range : 50mm (mounted to cover the center of the slitset stroke)

Conversion data (to open loop coord syst):
1. Scale factor : -1 (measure from top)
2. Offset factor : 60.4885mm

