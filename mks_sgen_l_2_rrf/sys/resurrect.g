; File "/gcodes/бок1.gcode" resume print after print paused at 2022-03-04 11:19
G21
M140 P0 S85.0
T-1 P0
G92 X66.365 Y100.459 Z0.200
G60 S1
G10 P1 S0 R0
G10 P0 S245 R245
T0 P0
M98 P"resurrect-prologue.g"
M116
M290 X0.000 Y0.000 Z0.000 R0
T-1 P0
T0 P6
; Workplace coordinates
G10 L2 P1 X0.00 Y0.00 Z0.00
G10 L2 P2 X0.00 Y0.00 Z0.00
G10 L2 P3 X0.00 Y0.00 Z0.00
G10 L2 P4 X0.00 Y0.00 Z0.00
G10 L2 P5 X0.00 Y0.00 Z0.00
G10 L2 P6 X0.00 Y0.00 Z0.00
G10 L2 P7 X0.00 Y0.00 Z0.00
G10 L2 P8 X0.00 Y0.00 Z0.00
G10 L2 P9 X0.00 Y0.00 Z0.00
G54
M106 S0.00
M106 P0 S0.00
M116
G92 E0.00000
M83
M486 S-1G17
M23 "/gcodes/бок1.gcode"
M26 S6192
G0 F6000 Z2.200
G0 F6000 X66.365 Y100.459
G0 F6000 Z0.200
G1 F2100.0
G21
M24
