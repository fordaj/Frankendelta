M502            ; Load firmware settings
M190 S60        ; Heat bed to 60
G33             ; Calibrate towers
M500            ; Store settings in EEPROM
M501            ; Load settings from EEPROM
G29 P1          ; Probe the bed
G29 P3 T        ; Repeat until all mesh points are filled in
G29 S1          ; Save UBL mesh points to EEPROM
G29 F 10.0      ; Set Fade Height for correction at 10.0 mm
G29 A           ; Activate the UBL
M500            ; Store settings in EEPROM
M501            ; Load settings from EEPROM
G28             ; Home