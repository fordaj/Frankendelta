; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Frankendelta
; Filament: Inland PLA
; Created: Fri Dec 18 2020 02:52:11 GMT-0500 (EST)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 220 °C
; Bed Temperature = 80 °C
; Retraction Distance = 3 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 100 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Round
; Bed Diameter = 300 mm
; Origin Bed Center = true
;
; Settings Speed:
; Slow Printing Speed = 3000 mm/m
; Fast Printing Speed = 6000 mm/m
; Movement Speed = 9000 mm/m
; Retract Speed = 2700 mm/m
; Unretract Speed = 2700 mm/m
; Printing Acceleration = 9000 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.05
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 225 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
T0 ; Switch to tool 0
G1 Z5 F100 ; Z raise
M104 S220 ; Set nozzle temperature (no wait)
M190 S80 ; Set bed temperature (wait)
M109 S220 ; Wait for nozzle temp
M204 P9000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S255
G1 X0 Y0 F9000 ; move to start
G1 Z0.2 F3000 ; Move to layer height
;
; prime nozzle
;
G1 X-49 Y-112.5 F9000 ; move to start
G1 X-49 Y112.5 E22.4506 F1800 ; print line
G1 X-48.28 Y112.5 F9000 ; move to start
G1 X-48.28 Y-112.5 E22.4506 F1800 ; print line
G1 E-3 F2700 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-112.5 F9000 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-112.5 E0.7982 F3000 ; print line
G1 X21 Y-112.5 E1.5965 F6000 ; print line
G1 X41 Y-112.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-107.5 F9000 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-107.5 E0.7982 F3000 ; print line
G1 X21 Y-107.5 E1.5965 F6000 ; print line
G1 X41 Y-107.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-102.5 F9000 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-102.5 E0.7982 F3000 ; print line
G1 X21 Y-102.5 E1.5965 F6000 ; print line
G1 X41 Y-102.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-97.5 F9000 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-97.5 E0.7982 F3000 ; print line
G1 X21 Y-97.5 E1.5965 F6000 ; print line
G1 X41 Y-97.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-92.5 F9000 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-92.5 E0.7982 F3000 ; print line
G1 X21 Y-92.5 E1.5965 F6000 ; print line
G1 X41 Y-92.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-87.5 F9000 ; move to start
M900 K0.25 ; set K-factor
M117 K0.25 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-87.5 E0.7982 F3000 ; print line
G1 X21 Y-87.5 E1.5965 F6000 ; print line
G1 X41 Y-87.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-82.5 F9000 ; move to start
M900 K0.3 ; set K-factor
M117 K0.3 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-82.5 E0.7982 F3000 ; print line
G1 X21 Y-82.5 E1.5965 F6000 ; print line
G1 X41 Y-82.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-77.5 F9000 ; move to start
M900 K0.35 ; set K-factor
M117 K0.35 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-77.5 E0.7982 F3000 ; print line
G1 X21 Y-77.5 E1.5965 F6000 ; print line
G1 X41 Y-77.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-72.5 F9000 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-72.5 E0.7982 F3000 ; print line
G1 X21 Y-72.5 E1.5965 F6000 ; print line
G1 X41 Y-72.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-67.5 F9000 ; move to start
M900 K0.45 ; set K-factor
M117 K0.45 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-67.5 E0.7982 F3000 ; print line
G1 X21 Y-67.5 E1.5965 F6000 ; print line
G1 X41 Y-67.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-62.5 F9000 ; move to start
M900 K0.5 ; set K-factor
M117 K0.5 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-62.5 E0.7982 F3000 ; print line
G1 X21 Y-62.5 E1.5965 F6000 ; print line
G1 X41 Y-62.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-57.5 F9000 ; move to start
M900 K0.55 ; set K-factor
M117 K0.55 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-57.5 E0.7982 F3000 ; print line
G1 X21 Y-57.5 E1.5965 F6000 ; print line
G1 X41 Y-57.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-52.5 F9000 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-52.5 E0.7982 F3000 ; print line
G1 X21 Y-52.5 E1.5965 F6000 ; print line
G1 X41 Y-52.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-47.5 F9000 ; move to start
M900 K0.65 ; set K-factor
M117 K0.65 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-47.5 E0.7982 F3000 ; print line
G1 X21 Y-47.5 E1.5965 F6000 ; print line
G1 X41 Y-47.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-42.5 F9000 ; move to start
M900 K0.7 ; set K-factor
M117 K0.7 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-42.5 E0.7982 F3000 ; print line
G1 X21 Y-42.5 E1.5965 F6000 ; print line
G1 X41 Y-42.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-37.5 F9000 ; move to start
M900 K0.75 ; set K-factor
M117 K0.75 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-37.5 E0.7982 F3000 ; print line
G1 X21 Y-37.5 E1.5965 F6000 ; print line
G1 X41 Y-37.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-32.5 F9000 ; move to start
M900 K0.8 ; set K-factor
M117 K0.8 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-32.5 E0.7982 F3000 ; print line
G1 X21 Y-32.5 E1.5965 F6000 ; print line
G1 X41 Y-32.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-27.5 F9000 ; move to start
M900 K0.85 ; set K-factor
M117 K0.85 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-27.5 E0.7982 F3000 ; print line
G1 X21 Y-27.5 E1.5965 F6000 ; print line
G1 X41 Y-27.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-22.5 F9000 ; move to start
M900 K0.9 ; set K-factor
M117 K0.9 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-22.5 E0.7982 F3000 ; print line
G1 X21 Y-22.5 E1.5965 F6000 ; print line
G1 X41 Y-22.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-17.5 F9000 ; move to start
M900 K0.95 ; set K-factor
M117 K0.95 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-17.5 E0.7982 F3000 ; print line
G1 X21 Y-17.5 E1.5965 F6000 ; print line
G1 X41 Y-17.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-12.5 F9000 ; move to start
M900 K1 ; set K-factor
M117 K1 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-12.5 E0.7982 F3000 ; print line
G1 X21 Y-12.5 E1.5965 F6000 ; print line
G1 X41 Y-12.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-7.5 F9000 ; move to start
M900 K1.05 ; set K-factor
M117 K1.05 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-7.5 E0.7982 F3000 ; print line
G1 X21 Y-7.5 E1.5965 F6000 ; print line
G1 X41 Y-7.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y-2.5 F9000 ; move to start
M900 K1.1 ; set K-factor
M117 K1.1 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y-2.5 E0.7982 F3000 ; print line
G1 X21 Y-2.5 E1.5965 F6000 ; print line
G1 X41 Y-2.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y2.5 F9000 ; move to start
M900 K1.15 ; set K-factor
M117 K1.15 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y2.5 E0.7982 F3000 ; print line
G1 X21 Y2.5 E1.5965 F6000 ; print line
G1 X41 Y2.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y7.5 F9000 ; move to start
M900 K1.2 ; set K-factor
M117 K1.2 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y7.5 E0.7982 F3000 ; print line
G1 X21 Y7.5 E1.5965 F6000 ; print line
G1 X41 Y7.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y12.5 F9000 ; move to start
M900 K1.25 ; set K-factor
M117 K1.25 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y12.5 E0.7982 F3000 ; print line
G1 X21 Y12.5 E1.5965 F6000 ; print line
G1 X41 Y12.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y17.5 F9000 ; move to start
M900 K1.3 ; set K-factor
M117 K1.3 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y17.5 E0.7982 F3000 ; print line
G1 X21 Y17.5 E1.5965 F6000 ; print line
G1 X41 Y17.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y22.5 F9000 ; move to start
M900 K1.35 ; set K-factor
M117 K1.35 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y22.5 E0.7982 F3000 ; print line
G1 X21 Y22.5 E1.5965 F6000 ; print line
G1 X41 Y22.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y27.5 F9000 ; move to start
M900 K1.4 ; set K-factor
M117 K1.4 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y27.5 E0.7982 F3000 ; print line
G1 X21 Y27.5 E1.5965 F6000 ; print line
G1 X41 Y27.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y32.5 F9000 ; move to start
M900 K1.45 ; set K-factor
M117 K1.45 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y32.5 E0.7982 F3000 ; print line
G1 X21 Y32.5 E1.5965 F6000 ; print line
G1 X41 Y32.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y37.5 F9000 ; move to start
M900 K1.5 ; set K-factor
M117 K1.5 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y37.5 E0.7982 F3000 ; print line
G1 X21 Y37.5 E1.5965 F6000 ; print line
G1 X41 Y37.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y42.5 F9000 ; move to start
M900 K1.55 ; set K-factor
M117 K1.55 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y42.5 E0.7982 F3000 ; print line
G1 X21 Y42.5 E1.5965 F6000 ; print line
G1 X41 Y42.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y47.5 F9000 ; move to start
M900 K1.6 ; set K-factor
M117 K1.6 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y47.5 E0.7982 F3000 ; print line
G1 X21 Y47.5 E1.5965 F6000 ; print line
G1 X41 Y47.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y52.5 F9000 ; move to start
M900 K1.65 ; set K-factor
M117 K1.65 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y52.5 E0.7982 F3000 ; print line
G1 X21 Y52.5 E1.5965 F6000 ; print line
G1 X41 Y52.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y57.5 F9000 ; move to start
M900 K1.7 ; set K-factor
M117 K1.7 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y57.5 E0.7982 F3000 ; print line
G1 X21 Y57.5 E1.5965 F6000 ; print line
G1 X41 Y57.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y62.5 F9000 ; move to start
M900 K1.75 ; set K-factor
M117 K1.75 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y62.5 E0.7982 F3000 ; print line
G1 X21 Y62.5 E1.5965 F6000 ; print line
G1 X41 Y62.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y67.5 F9000 ; move to start
M900 K1.8 ; set K-factor
M117 K1.8 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y67.5 E0.7982 F3000 ; print line
G1 X21 Y67.5 E1.5965 F6000 ; print line
G1 X41 Y67.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y72.5 F9000 ; move to start
M900 K1.85 ; set K-factor
M117 K1.85 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y72.5 E0.7982 F3000 ; print line
G1 X21 Y72.5 E1.5965 F6000 ; print line
G1 X41 Y72.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y77.5 F9000 ; move to start
M900 K1.9 ; set K-factor
M117 K1.9 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y77.5 E0.7982 F3000 ; print line
G1 X21 Y77.5 E1.5965 F6000 ; print line
G1 X41 Y77.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y82.5 F9000 ; move to start
M900 K1.95 ; set K-factor
M117 K1.95 ; 
G1 E3 F2700 ; un-retract
G1 X-19 Y82.5 E0.7982 F3000 ; print line
G1 X21 Y82.5 E1.5965 F6000 ; print line
G1 X41 Y82.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X-39 Y87.5 F9000 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X-19 Y92.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X-19 Y112.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 X21 Y92.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X21 Y112.5 E0.7982 F3000 ; print line
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
;
; print K-values
;
G1 X43 Y-114.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-114.5 E0.0798 F3000 ; 0
G1 X45 Y-112.5 E0.0798 F3000 ; 0
G1 X45 Y-110.5 E0.0798 F3000 ; 0
G1 X43 Y-110.5 E0.0798 F3000 ; 0
G1 X43 Y-112.5 E0.0798 F3000 ; 0
G1 X43 Y-114.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-104.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-104.5 E0.0798 F3000 ; 0
G1 X45 Y-102.5 E0.0798 F3000 ; 0
G1 X45 Y-100.5 E0.0798 F3000 ; 0
G1 X43 Y-100.5 E0.0798 F3000 ; 0
G1 X43 Y-102.5 E0.0798 F3000 ; 0
G1 X43 Y-104.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-104.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-104.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-104.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-102.5 E0.0798 F3000 ; 1
G1 X47 Y-100.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-94.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-94.5 E0.0798 F3000 ; 0
G1 X45 Y-92.5 E0.0798 F3000 ; 0
G1 X45 Y-90.5 E0.0798 F3000 ; 0
G1 X43 Y-90.5 E0.0798 F3000 ; 0
G1 X43 Y-92.5 E0.0798 F3000 ; 0
G1 X43 Y-94.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-94.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-94.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-94.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-92.5 F9000 ; move to start
G1 X47 Y-90.5 F9000 ; move to start
G1 X49 Y-90.5 E0.0798 F3000 ; 2
G1 X49 Y-92.5 E0.0798 F3000 ; 2
G1 X47 Y-92.5 E0.0798 F3000 ; 2
G1 X47 Y-94.5 E0.0798 F3000 ; 2
G1 X49 Y-94.5 E0.0798 F3000 ; 2
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-84.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-84.5 E0.0798 F3000 ; 0
G1 X45 Y-82.5 E0.0798 F3000 ; 0
G1 X45 Y-80.5 E0.0798 F3000 ; 0
G1 X43 Y-80.5 E0.0798 F3000 ; 0
G1 X43 Y-82.5 E0.0798 F3000 ; 0
G1 X43 Y-84.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-84.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-84.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-84.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-82.5 F9000 ; move to start
G1 X47 Y-80.5 F9000 ; move to start
G1 X49 Y-80.5 E0.0798 F3000 ; 3
G1 X49 Y-82.5 E0.0798 F3000 ; 3
G1 X49 Y-84.5 E0.0798 F3000 ; 3
G1 X47 Y-84.5 E0.0798 F3000 ; 3
G1 X47 Y-82.5 F9000 ; move to start
G1 X49 Y-82.5 E0.0798 F3000 ; 3
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-74.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-74.5 E0.0798 F3000 ; 0
G1 X45 Y-72.5 E0.0798 F3000 ; 0
G1 X45 Y-70.5 E0.0798 F3000 ; 0
G1 X43 Y-70.5 E0.0798 F3000 ; 0
G1 X43 Y-72.5 E0.0798 F3000 ; 0
G1 X43 Y-74.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-74.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-74.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-74.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-72.5 F9000 ; move to start
G1 X47 Y-70.5 F9000 ; move to start
G1 X47 Y-72.5 E0.0798 F3000 ; 4
G1 X49 Y-72.5 E0.0798 F3000 ; 4
G1 X49 Y-70.5 F9000 ; move to start
G1 X49 Y-72.5 E0.0798 F3000 ; 4
G1 X49 Y-74.5 E0.0798 F3000 ; 4
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-64.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-64.5 E0.0798 F3000 ; 0
G1 X45 Y-62.5 E0.0798 F3000 ; 0
G1 X45 Y-60.5 E0.0798 F3000 ; 0
G1 X43 Y-60.5 E0.0798 F3000 ; 0
G1 X43 Y-62.5 E0.0798 F3000 ; 0
G1 X43 Y-64.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-64.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-64.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-64.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X49 Y-64.5 E0.0798 F3000 ; 5
G1 X49 Y-62.5 E0.0798 F3000 ; 5
G1 X47 Y-62.5 E0.0798 F3000 ; 5
G1 X47 Y-60.5 E0.0798 F3000 ; 5
G1 X49 Y-60.5 E0.0798 F3000 ; 5
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-54.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-54.5 E0.0798 F3000 ; 0
G1 X45 Y-52.5 E0.0798 F3000 ; 0
G1 X45 Y-50.5 E0.0798 F3000 ; 0
G1 X43 Y-50.5 E0.0798 F3000 ; 0
G1 X43 Y-52.5 E0.0798 F3000 ; 0
G1 X43 Y-54.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-54.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-54.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-54.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-52.5 F9000 ; move to start
G1 X49 Y-52.5 E0.0798 F3000 ; 6
G1 X49 Y-54.5 E0.0798 F3000 ; 6
G1 X47 Y-54.5 E0.0798 F3000 ; 6
G1 X47 Y-52.5 E0.0798 F3000 ; 6
G1 X47 Y-50.5 E0.0798 F3000 ; 6
G1 X49 Y-50.5 E0.0798 F3000 ; 6
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-44.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-44.5 E0.0798 F3000 ; 0
G1 X45 Y-42.5 E0.0798 F3000 ; 0
G1 X45 Y-40.5 E0.0798 F3000 ; 0
G1 X43 Y-40.5 E0.0798 F3000 ; 0
G1 X43 Y-42.5 E0.0798 F3000 ; 0
G1 X43 Y-44.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-44.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-44.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-44.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-42.5 F9000 ; move to start
G1 X47 Y-40.5 F9000 ; move to start
G1 X49 Y-40.5 E0.0798 F3000 ; 7
G1 X49 Y-42.5 E0.0798 F3000 ; 7
G1 X49 Y-44.5 E0.0798 F3000 ; 7
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-34.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-34.5 E0.0798 F3000 ; 0
G1 X45 Y-32.5 E0.0798 F3000 ; 0
G1 X45 Y-30.5 E0.0798 F3000 ; 0
G1 X43 Y-30.5 E0.0798 F3000 ; 0
G1 X43 Y-32.5 E0.0798 F3000 ; 0
G1 X43 Y-34.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-34.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-34.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-34.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y-32.5 F9000 ; move to start
G1 X49 Y-32.5 E0.0798 F3000 ; 8
G1 X49 Y-34.5 E0.0798 F3000 ; 8
G1 X47 Y-34.5 E0.0798 F3000 ; 8
G1 X47 Y-32.5 E0.0798 F3000 ; 8
G1 X47 Y-30.5 E0.0798 F3000 ; 8
G1 X49 Y-30.5 E0.0798 F3000 ; 8
G1 X49 Y-32.5 E0.0798 F3000 ; 8
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-24.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X45 Y-24.5 E0.0798 F3000 ; 0
G1 X45 Y-22.5 E0.0798 F3000 ; 0
G1 X45 Y-20.5 E0.0798 F3000 ; 0
G1 X43 Y-20.5 E0.0798 F3000 ; 0
G1 X43 Y-22.5 E0.0798 F3000 ; 0
G1 X43 Y-24.5 E0.0798 F3000 ; 0
G1 E-3 F2700 ; retract
G1 X46 Y-24.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X46 Y-24.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X47 Y-24.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X49 Y-24.5 E0.0798 F3000 ; 9
G1 X49 Y-22.5 E0.0798 F3000 ; 9
G1 X47 Y-22.5 E0.0798 F3000 ; 9
G1 X47 Y-20.5 E0.0798 F3000 ; 9
G1 X49 Y-20.5 E0.0798 F3000 ; 9
G1 X49 Y-22.5 E0.0798 F3000 ; 9
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-14.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y-12.5 E0.0798 F3000 ; 1
G1 X43 Y-10.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y-4.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y-2.5 E0.0798 F3000 ; 1
G1 X43 Y-0.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y-4.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y-4.1 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y-4.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y-2.5 E0.0798 F3000 ; 1
G1 X45 Y-0.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y5.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y7.5 E0.0798 F3000 ; 1
G1 X43 Y9.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y5.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y5.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y5.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y7.5 F9000 ; move to start
G1 X45 Y9.5 F9000 ; move to start
G1 X47 Y9.5 E0.0798 F3000 ; 2
G1 X47 Y7.5 E0.0798 F3000 ; 2
G1 X45 Y7.5 E0.0798 F3000 ; 2
G1 X45 Y5.5 E0.0798 F3000 ; 2
G1 X47 Y5.5 E0.0798 F3000 ; 2
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y15.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y17.5 E0.0798 F3000 ; 1
G1 X43 Y19.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y15.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y15.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y15.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y17.5 F9000 ; move to start
G1 X45 Y19.5 F9000 ; move to start
G1 X47 Y19.5 E0.0798 F3000 ; 3
G1 X47 Y17.5 E0.0798 F3000 ; 3
G1 X47 Y15.5 E0.0798 F3000 ; 3
G1 X45 Y15.5 E0.0798 F3000 ; 3
G1 X45 Y17.5 F9000 ; move to start
G1 X47 Y17.5 E0.0798 F3000 ; 3
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y25.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y27.5 E0.0798 F3000 ; 1
G1 X43 Y29.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y25.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y25.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y25.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y27.5 F9000 ; move to start
G1 X45 Y29.5 F9000 ; move to start
G1 X45 Y27.5 E0.0798 F3000 ; 4
G1 X47 Y27.5 E0.0798 F3000 ; 4
G1 X47 Y29.5 F9000 ; move to start
G1 X47 Y27.5 E0.0798 F3000 ; 4
G1 X47 Y25.5 E0.0798 F3000 ; 4
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y35.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y37.5 E0.0798 F3000 ; 1
G1 X43 Y39.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y35.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y35.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y35.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y35.5 E0.0798 F3000 ; 5
G1 X47 Y37.5 E0.0798 F3000 ; 5
G1 X45 Y37.5 E0.0798 F3000 ; 5
G1 X45 Y39.5 E0.0798 F3000 ; 5
G1 X47 Y39.5 E0.0798 F3000 ; 5
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y45.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y47.5 E0.0798 F3000 ; 1
G1 X43 Y49.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y45.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y45.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y45.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y47.5 F9000 ; move to start
G1 X47 Y47.5 E0.0798 F3000 ; 6
G1 X47 Y45.5 E0.0798 F3000 ; 6
G1 X45 Y45.5 E0.0798 F3000 ; 6
G1 X45 Y47.5 E0.0798 F3000 ; 6
G1 X45 Y49.5 E0.0798 F3000 ; 6
G1 X47 Y49.5 E0.0798 F3000 ; 6
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y55.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y57.5 E0.0798 F3000 ; 1
G1 X43 Y59.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y55.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y55.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y55.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y57.5 F9000 ; move to start
G1 X45 Y59.5 F9000 ; move to start
G1 X47 Y59.5 E0.0798 F3000 ; 7
G1 X47 Y57.5 E0.0798 F3000 ; 7
G1 X47 Y55.5 E0.0798 F3000 ; 7
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y65.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y67.5 E0.0798 F3000 ; 1
G1 X43 Y69.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y65.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y65.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y65.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X45 Y67.5 F9000 ; move to start
G1 X47 Y67.5 E0.0798 F3000 ; 8
G1 X47 Y65.5 E0.0798 F3000 ; 8
G1 X45 Y65.5 E0.0798 F3000 ; 8
G1 X45 Y67.5 E0.0798 F3000 ; 8
G1 X45 Y69.5 E0.0798 F3000 ; 8
G1 X47 Y69.5 E0.0798 F3000 ; 8
G1 X47 Y67.5 E0.0798 F3000 ; 8
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
G1 X43 Y75.5 F9000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E3 F2700 ; un-retract
G1 X43 Y77.5 E0.0798 F3000 ; 1
G1 X43 Y79.5 E0.0798 F3000 ; 1
G1 E-3 F2700 ; retract
G1 X44 Y75.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X44 Y75.9 E0.016 F3000 ; dot
G1 E-3 F2700 ; retract
G1 X45 Y75.5 F9000 ; move to start
G1 E3 F2700 ; un-retract
G1 X47 Y75.5 E0.0798 F3000 ; 9
G1 X47 Y77.5 E0.0798 F3000 ; 9
G1 X45 Y77.5 E0.0798 F3000 ; 9
G1 X45 Y79.5 E0.0798 F3000 ; 9
G1 X47 Y79.5 E0.0798 F3000 ; 9
G1 X47 Y77.5 E0.0798 F3000 ; 9
G1 E-3 F2700 ; retract
G1 Z0.3 F3000 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X0 Y0 F9000 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;