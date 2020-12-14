# Marlin Firmware
[Marlin firmware](https://marlinfw.org) version 2.0.7.2, last flashed 12-13-2020.

## configuration.h
All of the changes I've made to the [configuration.h](configuration.h) file. Since I am using a delta printer, I started with the generic example in [Marlin's configuration repository](https://github.com/MarlinFirmware/Configurations). Sections correspond with order of appearance in files. Actual code shown for simpler CTRL+f navigation.

### Setup
Shows up on host during boot and M115
```cpp
#define STRING_CONFIG_H_AUTHOR "Andrew Ford"
```
Default to serial port 0, otherwise emulate
```cpp
#define SERIAL_PORT 0
#define SERIAL_PORT_2 -1
```
Set printer name
```cpp
#define CUSTOM_MACHINE_NAME "Frankendelta"
```

### Thermistors
Hotend thermistor selection
```cpp
#define TEMP_SENSOR_0 5
```
Bed thermistor selection
```cpp
#define TEMP_SENSOR_BED 1
```

### PID Settings
Auto-tune menu on LCD
```cpp
#define PID_AUTOTUNE_MENU
```
Since I only have 1 hotend, I can set global PID settings
```cpp
#define DEFAULT_Kp 24.43
#define DEFAULT_Ki 1.93
#define DEFAULT_Kd 77.53
```
Use PID settings for bed. Limit heating so that adhesive doesn't melt
```cpp
#define PIDTEMPBED

#define MAX_BED_POWER 200

#define DEFAULT_bedKp 164.97
#define DEFAULT_bedKi 27.02
#define DEFAULT_bedKd 671.52
```

### Delta Settings
After homing, move downwards to prevent overshooting homing sensors
```cpp
#define DELTA_HOME_TO_SAFE_ZONE
```
Allow user to define safe zone
```cpp
#define DELTA_CALIBRATION_MENU
```
Allow G33 Auto-Calibration
```cpp
#define DELTA_AUTO_CALIBRATION
```
Printable radius(mm) = diameter/2 - unreachable space
```cpp
#define DELTA_PRINTABLE_RADIUS 150.0
```
Diagonal push-rod length
```cpp
#define DELTA_DIAGONAL_ROD 360.24 
```
Printable height (obtained from [calibration file](calibrateDelta.gcode))
```cpp
#define DELTA_HEIGHT 535.00
```
Endstop adjustment (obtained from [calibration file](../Calibration/calibrateDelta.gcode))
```cpp
#define DELTA_ENDSTOP_ADJ { 0.00, 0.00, 0.00 }
```
Diagonal push-rod horizontal coverage with centered effector(obtained from [calibration file](calibrateDelta.gcode))
```cpp
#define DELTA_RADIUS 190.4
```
Delta radius/diagonal rod adjustments
```cpp
#define DELTA_DIAGONAL_ROD_TRIM_TOWER { 0.0, 0.0, 0.0 }
```
