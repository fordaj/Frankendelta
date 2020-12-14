## Bed Leveling
Run [levelBed.gcode](levelBed.gcode) to heat, level the bed, and save to EEPROM. This edits the saved mesh that is loaded with each G28 (home)

## Belt Tensioning
1. Choose a frequency meter; I used my iPhone with the <a href="https://apps.apple.com/us/app/easy-tension/id1093873727">Easy Tension</a> application.
2. With the printer off, move the belt carriages halfway down their rails
3. Measure the distance L (cm) from the stepper motor to the pulley
4. To measure belt tension, "pluck" the belt at its midpoint on the non-carriage side. Not so hard that it smacks the rail, but hard enough for the frequency meter to record from 1-3cm away
5. Adjust belt tension until belts match desired frequency f = 3600/L. In my case, f = 3600/98cm = 36.7Hz

## Delta Calibration
Lots of data gathered here can be added to the [firmware](https://github.com/fordaj/Frankendelta)
1. Preheat to printing temperatures (ex. [heatPLA.gcode](heatPLA.gcode))
2. Run [calibrateDelta.gcode](calibrateDelta.gcode). This runs G33 (tower calibration), M500 (saves settings), G29 (auto-bed level), M500.