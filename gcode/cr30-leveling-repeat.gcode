M104 S220           ; set nozzle temp
M140 S75            ; set bed temp
M109 S220           ; wait for nozzle to reach temp
M190 S75            ; wait for bed to reach tmp
G28 XY              ; go to home position
G0 Y0               ; move nozzle to belt if negative offsets used
G92 X0 Y0 Z0 E0     ; zero out all axes (include extruder)
M83                 ; set extruder to relative coordinates
M117 Level Pattern  ; say "Level Pattern" on LCD
M808 L0             ; start infinite repeat
G92 Z0              ; Z needs to start at 0 at the start of the loop
G0 X215 E40 F800    ; extrude to "left" of belt
G0 Z5 E2            ; extrude short Z line
G0 X0 E40           ; extrude to "right" of belt
G0 Z10 E2           ; extrude short Z line
M808                ; go to loop start (M808 above)
