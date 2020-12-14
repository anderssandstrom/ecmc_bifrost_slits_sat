# Notes for SAT of slitset 11360

## Visual inspection

1. Mechanical coupling on axix one seems to not be thightend
2. Lemo panel conenctor nuts not tightened. Conenctors loose.


## Electrical commisioning:

## Switches

Axis 1 and Axis 2 have correct wired switches.

## Resolver

Pins are offset one step resulting in that the resolver cannot be read.


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

# Motion

## Stroke Axis 1
The stroke was measured to be 69.4mm

The limit switches are positioned VERY close to mechanical stop (especially the upper). This could be an issue.

![Almost collision](tests/11360/11360_limit_close_to_mech.png)


# Stroke Axis 2




Both axis wrong pinout of lemo. So skip test..
