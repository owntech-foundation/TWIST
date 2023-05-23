# Changelog V1.3

## Power leg

- Suppressed High side antiparallel diode to prevent current conduction in boost mode. (owntech/boards/TWIST#10)
- Added Eurocard compliant side power connector for interleaving on a backplate. 

## Measurments 

- Removed unecessary RC filtering at the VCC pins. 
- Fixed DC bus current sensor schematic. (owntech/boards/TWIST#7)
- Fixed DC bus voltage measurement routing (owntech/boards/TWIST#12)

## Feeder 

- Fixed noisy DCDC interfering with clean +5V and causing issues on the Measurments. (owntech/boards/TWIST#11)
- Lowered the start-up threshold of the feeder and the undervoltage threshold. (owntech/boards/TWIST#13)
- Fixed diode footprint and improved the routing. (owntech/boards/TWIST#20)

## Communication 

- Fixed analog bus amplifier issue (owntech/boards/TWIST#16)
- Fixed noisy analog bus with suitable filtering. 
- Suppressed unecessary diodes causing ground issues on the Communication link. 
- Fixed footprint issue with the PTCs. (owntech/boards/TWIST#19)
- Added solderjumps to connect pull-up/pull-down on RS485 (owntech/boards/TWIST#3)

## Mechanical 

- Fixed issue with through hole dcdc pads interfering with heatsink footprint on the bottom.
- Fixed hole location for the front plate. It now comply with Eurocard standard. (owntech/boards/TWIST#23)
- Minor adjustments on the guard ring footprint and edge cut so it now correctly match the grid with non weird dimensions.

## Microcontroller

- Changed the SPIN footprint to match new version (SPINv1.0).
- Fixed inversion of HRTIM_CHA and HRTIM_CHB. (owntech/boards/TWIST#18)

## Schematic

- Everything is now correctly aligned on 1.27mm grid
- A3 only paper size
- Corrected formulas for the voltage shifting circuitry. (owntech/boards/TWIST#9)
- Switched to absolute path for libraries (owntech/boards/TWIST#14)

## Software 

- Project ported to kiCAD v7.
