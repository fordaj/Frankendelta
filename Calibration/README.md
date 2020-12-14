# Hardware Calibration
Without proper hardware calibration, any software calibration would need corrected. Proper belt tension, stepper bearing alignment, and tight bolts will ensure the printer is reliable.

## Belt Tensioning
1. Choose a frequency meter; I used my iPhone with the <a href="https://apps.apple.com/us/app/easy-tension/id1093873727">Easy Tension</a> application.
2. With the printer off, move the belt carriages halfway down their rails
3. Measure the distance L (cm) from the stepper motor to the pulley
4. To measure belt tension, "pluck" the belt at its midpoint on the non-carriage side. Not so hard that it smacks the rail, but hard enough for the frequency meter to record from 1-3cm away
5. Adjust belt tension until belts match desired frequency f = 3600/L. In my case, f = 3600/98cm = 36.7Hz

# Software Calibration
With the hardware properly tightened/bolted in/connected/configured, we can move onto more precise software calibrations. Should the printer be moved, or print quality suffer, this section will prove useful.

## Probe Z Offset
1. Home the printer (G28)
2. Move the effector Z=1mm away from the bed
3. Using babystepping/0.0025mm adjustment, move Z until the probe sees the bed. Make a note of the Z position when the probe first notices the bed (Z_probe)
4. Take a thin piece of paper and place it under the nozzle. Babystep Z down until it makes contact with the paper, and the paper becomes slightly difficult to move
5. Z_offset = - abs(Z_probe - Z_current)
6. Run a print and make any adjustments needed until the first layer looks good

## Delta Calibration
Lots of data gathered here can be added to the [firmware](https://github.com/fordaj/Frankendelta)
1. Clean the bed of any dirt/dust/plastic etc.
2. Preheat to printing temperatures (ex. [heatPLA.gcode](heatPLA.gcode))
3. Run [calibrateDelta.gcode](calibrateDelta.gcode). This runs G33 (tower calibration), M500 (saves settings), G29 (auto-bed level), M500.

## Bed Leveling
Run [levelBed.gcode](levelBed.gcode) to heat, level the bed, and save to EEPROM. This edits the saved mesh that is loaded with each G28 (home)