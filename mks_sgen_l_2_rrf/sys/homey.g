; homey.g
; called to home the Y axis
;
M400                    ; make sure everything has stopped before we make changes
G91                     ; use relative positioning
M913 X70 Y70			; drop motor currents to 70%
G1 H1 Y-310 F3600 		; move right, stopping at the endstop
G1 H1 Y5	            ; move away from home

; X or Y is homed at this point, now home the other axis
G1 H1 Y-310 F3600       ; move towards axis minimum 
G1 H1 Y2                ; move away from home
M400                    ; make sure everything has stopped before we reset the motor currents
G90                     ; back to absolute positioning
M913 X100 Y100		  	; motor currents back to 100%
G92 Y0					; set 0