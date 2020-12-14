# Marlin Firmware
[Marlin firmware](https://marlinfw.org) version 2.0.7.2, last built 12-13-2020 in [firmware.bin](firmware.bin)

## Configuration.h
All of the changes I've made to the [Configuration.h](Marlin/Configuration.h) file. Since I am using a delta printer, I started with the generic example in [Marlin's configuration repository](https://github.com/MarlinFirmware/Configurations). Sections correspond with order of appearance in files. Actual code shown for simpler CTRL+f navigation.

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
Define motherboard (using BigTreeTech SKR V1.3)
```cpp
#define MOTHERBOARD BOARD_BTT_SKR_V1_3
```
Set printer name
```cpp
#define CUSTOM_MACHINE_NAME "Frankendelta"
```
Disable power supply unit control
```cpp
//#define PSU_CONTROL
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
Auto-tune menu on LCD.
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
Allow G33 Auto-Calibration (used in [calibration file](https://github.com/fordaj/Frankendelta/blob/main/Calibration/calibrateDelta.gcode))
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
Printable height (obtained from [calibration file](https://github.com/fordaj/Frankendelta/blob/main/Calibration/calibrateDelta.gcode))
```cpp
#define DELTA_HEIGHT 535.00
```
Endstop adjustment (obtained from [calibration file](https://github.com/fordaj/Frankendelta/blob/main/Calibration/calibrateDelta.gcode))
```cpp
#define DELTA_ENDSTOP_ADJ { 0.00, 0.00, 0.00 }
```
Diagonal push-rod horizontal coverage with centered effector(obtained from [calibration file](https://github.com/fordaj/Frankendelta/blob/main/Calibration/calibrateDelta.gcode))
```cpp
#define DELTA_RADIUS 190.4
```
Delta radius/diagonal rod adjustments
```cpp
#define DELTA_DIAGONAL_ROD_TRIM_TOWER { 0.0, 0.0, 0.0 }
```

### Endstop Settings
Disable endstop pullups
```cpp
//#define ENDSTOPPULLUPS
```
Ensure endstops are non-inverting
```cpp
#define X_MIN_ENDSTOP_INVERTING false
#define Y_MIN_ENDSTOP_INVERTING false
#define Z_MIN_ENDSTOP_INVERTING false
#define X_MAX_ENDSTOP_INVERTING false
#define Y_MAX_ENDSTOP_INVERTING false
#define Z_MAX_ENDSTOP_INVERTING false
#define Z_MIN_PROBE_ENDSTOP_INVERTING false
```
Enable stepper drivers
```cpp
#define X_DRIVER_TYPE  TMC2130
#define Y_DRIVER_TYPE  TMC2130
#define Z_DRIVER_TYPE  TMC2130

#define E0_DRIVER_TYPE TMC2130
```

### Movement Settings
Adjust "Axis Steps Per Unit" variables
```cpp
#define XYZ_FULL_STEPS_PER_ROTATION 400

#define XYZ_PULLEY_TEETH 16

#define DEFAULT_AXIS_STEPS_PER_UNIT { DEFAULT_XYZ_STEPS_PER_UNIT, DEFAULT_XYZ_STEPS_PER_UNIT, DEFAULT_XYZ_STEPS_PER_UNIT, 158 } 
```
Increase max hotend feedrate
```cpp
#define DEFAULT_MAX_FEEDRATE { 500, 500, 500, 150 }
```
Lower default acceleration
```cpp
#define DEFAULT_ACCELERATION 2000
```
Change default hotend jerk
```cpp
#define DEFAULT_ACCELERATION 2000
```

### Z-Probe Options
Since we are using a laser probe, no mechanical deployment is needed
```cpp
#define FIX_MOUNTED_PROBE
```
Adjust nozzle-to-probe offset
```cpp
#define NOZZLE_TO_PROBE_OFFSET { 0, -19, -2.55 }
```
Define gap between probe locations and bed edge
```cpp
#define PROBING_MARGIN 40
```
Set probe XY movement speed to 100mm/s
```cpp
#define XY_PROBE_SPEED (100*60)
```
Enable multi-probing for improved accuracy
```cpp
#define MULTIPLE_PROBING 2
```
Adjust z-clearances
```cpp
#define Z_CLEARANCE_DEPLOY_PROBE   20
#define Z_CLEARANCE_BETWEEN_PROBES  8
#define Z_CLEARANCE_MULTI_PROBE     5
```
Enable minimum software endstops
```cpp
#define MIN_SOFTWARE_ENDSTOPS
```

### Bed Leveling
Enable 3-point bed leveling since I have a glass bed
```cpp
#define AUTO_BED_LEVELING_3POINT
```
If there is bed level data stored, load it after every [bed leveling](https://github.com/fordaj/Frankendelta/blob/main/Calibration/levelBed.gcode)
```cpp
#define RESTORE_LEVELING_AFTER_G28
```
Set homing speed to 60mm/s
```cpp
#define HOMING_FEEDRATE_Z  (60*60)
```

### Additional Features
Enable EEPROM
```cpp
#define EEPROM_SETTINGS
```
Setup heating profiles
```cpp
#define PREHEAT_1_LABEL       "PLA"
#define PREHEAT_1_TEMP_HOTEND  220
#define PREHEAT_1_TEMP_BED      80
#define PREHEAT_1_FAN_SPEED      0

#define PREHEAT_2_LABEL       "ABS"
#define PREHEAT_2_TEMP_HOTEND  240
#define PREHEAT_2_TEMP_BED      90
#define PREHEAT_2_FAN_SPEED      0
```
Track total/successful/failed/time remaining
```cpp
#define PRINTCOUNTER
```
Enable SD card support
```cpp
#define SDSUPPORT
```
I lost the menu knob orientation coin flip :-)
```cpp
#define REVERSE_ENCODER_DIRECTION
```

### LCD Settings
Choose model
```cpp
#define REPRAP_DISCOUNT_FULL_GRAPHIC_SMART_CONTROLLER
```

### Extra Features
Drive fan with software PWM, which is less annoying than hardware
```cpp
#define FAN_SOFT_PWM
```

## Configuration_adv.h
All of the changes I've made to the [Configuration_adv.h](Marlin/Configuration_adv.h) file. 

### Thermal Settings
Set minimum fan PWM
```cpp
#define FAN_MIN_PWM 35
```
### Additional Features
Sort files alphabetically
```cpp
#define SDCARD_SORT_ALPHA
```
Scroll long filenames
```cpp
#define SCROLL_LONG_FILENAMES
```
Add frames for fan animation, show heating progress bars
```cpp
#define STATUS_FAN_FRAMES 3
#define STATUS_HEAT_PERCENT 
```
Enable babystepping. Make it always available, accessible with a double-click of the knob. Operate in mm instead of microsteps. Move 0.001 per knob click. Combine babystepping and "M851 Z", the probe offset command
```cpp
#define BABYSTEPPING

#define BABYSTEP_ALWAYS_AVAILABLE

#define BABYSTEP_MILLIMETER_UNITS
#define BABYSTEP_MULTIPLICATOR_Z  0.001
#define BABYSTEP_MULTIPLICATOR_XY 0.001 

#define DOUBLECLICK_FOR_Z_BABYSTEPPING

#define BABYSTEP_ZPROBE_OFFSET
```
Configure linear advance
```cpp
#define LIN_ADVANCE

#define LIN_ADVANCE_K 0.3
```
Disable arc support to save memory
```cpp
//#define ARC_SUPPORT
```

### Buffers
Enable firmware/LCD controlled retraction
```cpp
#define FWRETRACT
```
Trinamic Configuration
```cpp
#define HOLD_MULTIPLIER    0.4

#define X_CURRENT       700
#define Y_CURRENT       700
#define Z_CURRENT       700
#define E0_CURRENT      1050

#define TMC_USE_SW_SPI

//#define STEALTHCHOP_E

#define MONITOR_DRIVER_STATUS
```