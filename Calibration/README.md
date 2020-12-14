## Belt Tensioning
1. Choose a frequency meter; I used my iPhone with the <a href="https://apps.apple.com/us/app/easy-tension/id1093873727">Easy Tension</a> application.
2. With the printer off, move the belt carriages halfway down their rails
3. Measure the distance L (cm) from the stepper motor to the pulley
4. Adjust belt tension until it matches the desired frequency f = 3600/L. In my case, f = 3600/98cm = 36.7Hz

## Tower Calibration
1. Preheat to printing temperatures (ex.[a relative link](heatPLA.gcode))
2. Run [a relative link](towerCalibration.gcode). This runs G33 (tower calibration), M500 (saves settings), G29 (auto-bed level), M500.