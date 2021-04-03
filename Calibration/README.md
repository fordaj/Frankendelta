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
6. Homing and then G0 Z0 should place the nozzle on a post-it with exactly the pressure you calibrated it to

## Delta Calibration
Lots of data gathered here can be added to the [firmware](https://github.com/fordaj/Frankendelta)
1. Clean the bed of any dirt/dust/plastic etc.
2. Preheat to printing temperatures (ex. [heatPLA.gcode](heatPLA.gcode))
3. Run [calibrateDelta.gcode](calibrateDelta.gcode). This runs G33 (tower calibration), M500 (saves settings), G29 (auto-bed level), M500.

## PID Tuning
Any changes affecting the thermals of the printer should be followed with appropriate PID tuning. Installing a new glass bed, new heat break, fans, nozzle material, etc. all impact the printer's heating rates.
### Hotend
PID auto-tuning for the hotend can be run with M303 from host software (pronterface, octoprint, etc):
```gcode
M303 E0 S220 C15    ; Auto-tune PID values for hotend with 15 cycles 0C to 220C
```
After completion, be sure to copy the new values into Configuration.h. The values can be saved to the printer without rebuilding firmware:
```gcode
M301 P24.76 I1.91 D80.16  ; Write new PID values to EEPROM
M500                        ; Store settings
M501                        ; Load settings
```
Common issues:
1. **No silicone sock on the heater block**: Since the Ender 3 fan blows onto the entire hotend, it prevents the heater block from reaching temperature.
2. **Faulty thermistor/connection/wrong thermistor number in Marlin**: The temperature varies wildly.
3. **Faulty heater cartridge/connection**: Unable to heat up/heats intermittently.
4. **PID settings aren't enabled in Marlin**: Will show up as "Bad extruder number!" when running commands.

### Bed
PID auto-tuning for the bed can be run with an M304:
```gcode
M303 E-1 S80    ; Auto-tune PID values for bed with 5 cycles 0C to 60C
```
After completion, be sure to copy the new values into Configuration.h. The values can be saved to the printer without rebuilding firmware:
```gcode
M304 P99.85 I11.14 D596.73  ; Write new PID values to EEPROM
M500                        ; Store settings
M501                        ; Load settings
```

## Bed Leveling
To calibrate the saved mesh in UBL, run [UBL.gcode](UBL.gcode):
```gcode
M502            ; Load firmware settings
M500            ; Store settings in EEPROM
M501            ; Load settings from EEPROM
M190 S80        ; Heat bed to 80
M104 S220       ; Heat nozzle to 220
G28             ; Home
G29 P1          ; Probe the bed
G29 P3 T        ; Repeat until all mesh points are filled in
G29 S1          ; Save UBL mesh points to EEPROM
G29 F 10.0      ; Set Fade Height for correction at 10.0 mm
G29 A           ; Activate the UBL
M500            ; Store settings
M501            ; Load settings
```
Code modified from Marlin's [documentation](https://marlinfw.org/docs/features/unified_bed_leveling.html). Before every print, the mesh can be verified and tilted with a 3-point bed level:
```gcode
G29 L1  ; Load the mesh saved in slot 1
G29 J   ; 3-point ABL, tilt mesh accordingly
```

## E-steps
1. Heat the nozzle to the temperature you'll be printing with
2. Put the printer in relative position, and print out the old e-step value
```gcode
G91 ; Relative positioning
M92 ; The "E" parameter is the old e-step value
```
3. Mark the filament with a marker as close to the extruder as possible
4. Make another mark on the incoming filament 120mm away from the first mark
5. Turn the extruder knob to push filament through the hotend until your first mark lines up with the beginning of the extruder
6. Extrude 100mm of filament
```gcode
G1 E100 F50    ; Extrude 100mm of filament at 50mm/s
```
7. New_ESteps = Old_ESteps * 100 / (120 - length_remaining) (Teaching Teach offers an [e-step calculator](https://teachingtechyt.github.io/calibration.html#esteps))
8. Write New_ESteps to the printer
```gcode
M92 E192 ; Write e-steps to printer
M500     ; Store settings
M501     ; Load settings
```
8. Repeat steps 3-7 until the length_remaining is 20mm
At this point, many tutorials have you adjust your slicer's flow rate multiplier. I don't like to do this, because if the e-steps are tuned and the hotend is assembled correctly, then this should not be changed. To verify that you've properly calibrated your e-steps, print [cube.gcode](cube.gcode) and ensure that the edges are 0.40mm wide.

## Retraction
I used a [retraction tower](retraction.gcode) from using Teaching Tech's [online generator](https://teachingtechyt.github.io/calibration.html#retraction).

## Acceleration and Jerk
I used an [acceleration test](acceleration.gcode) from using Teaching Tech's [online generator](https://teachingtechyt.github.io/calibration.html#accel).

## Linear Advance
I used [linearAdvance](linearAdvance.gcode) from Marlin's linear advance [gcode generator](https://marlinfw.org/tools/lin_advance/k-factor.html). Note: For whatever reason, the code took *3 minutes* to get from home position to the bed.