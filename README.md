# Frankendelta
Meet the 45lb, assembled-disassembled-assembled-etc., absolute unit of a Delta 3D Printer, Frankendelta.
~Picture goes here~
Over the summer of 2019, my dad and I worked together to design a 3D printer with a build volume large enough to print my head (that wasn't the main goal... but it's on the list). In all fairness, my dad brought in most of the expertise from building his Kossel Mini Delta 3D printer, scaling up the things he felt worked well from that. I had experience with cartesian printers, but deltas are a different beast. This repository serves as a medium for functionality and documentation, where I can refer back to the processes and files used to get Frankendelta humming and happy as needed.

## Parts List
Here are most of the parts included in this build. Some not included are the aluminum sheets my dad milled on his CNC, T-nuts, control board standoffs, fans, and supplies (wires, JTX connectors, solder, cables, fuses, etc.). All in all, ended up costing ~$800.
| Quantity | Type | Item | Price |
|--|--|--|--|
| 1 | Control Board | [BIGTREETECH SKR V1.3 32-bit Smoothie Board with SPI TMC2130 Stepper Drivers](https://www.biqu.equipment/products/pre-sale-bigtreetech-skr-v1-3-smoothieboard-32-bit-open-source-arm-cpu-motherboard-support-uart-model-2004lcd-3d-printer-parts?variant=29477907005538) | $44.95 |
| 1 | Power Supply | [Meanwell 24V, 200W PSU](https://www.aliexpress.com/item/32855960682.html?spm=2114.search0104.3.1.3b9d77148eP91b&ws_ab_test=searchweb0_0,searchweb201602_9_10065_10130_10068_10890_10547_319_10546_317_10548_10545_10696_453_10084_454_10083_10618_10307_537_536_10059_10884_10887_321_322_10103,searchweb201603_35,ppcSwitch_0&algo_expid=8e751027-f404-431d-9236-467e57eb0355-0&algo_pvid=8e751027-f404-431d-9236-467e57eb0355&transAbTest=ae803_3) | $32.30 |
| 1 | LCD | [MKS 12864LCD](https://www.amazon.com/HiLetgo-Printer-Controller-Display-Arduino/dp/B07X378P8X/ref=sr_1_3?dchild=1&keywords=12864+lcd&qid=1607969844&s=industrial&sr=1-3) | $12.99 |
| 4 | Stepper Motors | [NEMA 17 0.9 deg 76oz.in Steppers](https://www.seemecnc.com/collections/parts-accessories/products/nema-17-stepper-motor-1-8-degree-76oz-in-2a-5mm-shaft-w-flat) | $22.50 |
| 7 | Belts | [GT2 x 6mm Wide Timing Belt (sold per meter)](https://www.seemecnc.com/collections/parts-accessories/products/gt2-timing-belt) | $45.50 |
| 1 | Bed Heater| [Circular Silicone Bed Heater 120v, 300mm, 350W](https://www.seemecnc.com/collections/parts-accessories/products/silicone-heater-for-300mm-diameter-beds) | $40.00 |
| 1 | Build Plate | [310mm Circular Glass Build Plate](https://www.seemecnc.com/collections/parts-accessories/products/boroscillicate-glass-build-plate-310mm) | $30.00 |
| 1 | Extruder | [EZR Struder](https://www.seemecnc.com/collections/parts-accessories/products/ezrstruder) | $35.00 |
| 1 | Relay | [Solid State Relay (SSR) 24V~480VAC, 40A, 3-32VDC Control](https://docs.google.com/spreadsheets/d/126paPdKw47GO45m8PfAj-qZeEyYEzkp5sGYM6t5eCeo/edit#gid=2045847217) | $25.00 |
| 3 | Timing Pulley | [16 Tooth Timing Pulley for GT2 x 6mm Belt](https://www.seemecnc.com/collections/parts-accessories/products/16-tooth-g-series-2mm-pitch-x-6mm-wide-timing-pulley-3-pack) | $3.50 |
| 1 | Bed Thermistor | [100k Glass Bead NTC Thermistor](https://www.seemecnc.com/collections/parts-accessories/products/thermistor-100k-ntc) | $6.00 |
| 1 | PTFE Tube | [2mm ID x 4mm OD PTFE Tubing, 7ft](https://www.seemecnc.com/collections/parts-accessories/products/ptfe-tubing-2mm-id-x-4mm-od) | $2.70 |
| 1 | Kossel Delta Corners | [2040 Aluminum Alloy Delta Angle Corner Kit, Kossel XL Update](https://www.aliexpress.com/item/32811135341.html?spm=2114.search0104.3.1.5a04739e5hAfkl&ws_ab_test=searchweb0_0,searchweb201602_9_10065_10130_10068_10890_10547_319_10546_317_10548_10545_10696_453_10084_454_10083_10618_10307_537_536_10059_10884_10887_321_322_10103,searchweb201603_35,ppcSwitch_0&algo_expid=a3b4f901-13f0-4ec3-b1fd-ec0813078da3-0&algo_pvid=a3b4f901-13f0-4ec3-b1fd-ec0813078da3&transAbTest=ae803_3) | $63.99 |
| 3 | Linear Rails | [600mm MGN9 C Linear Rails with Sliding Carriage](https://www.aliexpress.com/item/3D-print-parts-cnc-Kossel-Mini-MGN9-9mm-miniature-linear-rail-slide-1pc-MGN9-linear-rail/32806622073.html?spm=2114.search0104.3.1.343a280dEc8kPn&ws_ab_test=searchweb0_0,searchweb201602_9_10065_10130_10068_10890_10547_319_10546_317_10548_10545_10696_453_10084_454_10083_10618_10307_537_536_10059_10884_10887_321_322_10103,searchweb201603_35,ppcSwitch_0&algo_expid=1050dd04-ff44-4791-b0d4-8a9743b34de0-0&algo_pvid=1050dd04-ff44-4791-b0d4-8a9743b34de0&transAbTest=ae803_3) | $59.49 |
| 1 | Probe | [Duet IR Auto-Bed Leveling Probe](https://www.printedsolid.com/products/duet-ir-probe) | $24.85 |
| 1 | Hotend | [E3D V6 24V Bowden All-Metal Hotend](https://e3d-online.com/collections/hotends/products/v6-all-metal-hotend) | $53.50 |
| 1 | Linear Rails | [V-Slot 20mm x 60mm x 500mm Linear Rail, Black](https://openbuildspartstore.com/v-slot-20x60-linear-rail/) | $10.99 |
| 3 | Linear Rails | [V-Slot 20mm x 40mm x 1000mm Linear Rail, Black](https://openbuildspartstore.com/v-slot-20x40-linear-rail/) | $45.87 |
| 3 | Linear Rails | [V-Slot 20mm x 40mm x 500mm Linear Rail, Black](https://openbuildspartstore.com/v-slot-20x40-linear-rail/) | $23.97 |
| 3 | Linear Rails | [V-Slot 20mm x 40mm x 500mm Linear Rail, Black](https://openbuildspartstore.com/v-slot-20x20-linear-rail/) | $17.97 |