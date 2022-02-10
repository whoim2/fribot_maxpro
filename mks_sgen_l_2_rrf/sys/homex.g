; homex.g
; called to home the X axis
;
M400                    ; make sure everything has stopped before we make changes
M913 X70 Y70			; drop motor currents to 70%
G91                     ; use relative positioning
G1 H1 X-310 F3600 		; move right, stopping at the endstop
G1 H1 X5            	; move away from home

; X or Y is homed at this point, now home the other axis
G1 H1 X-310 F3600       ; move towards axis minimum 
G1 H1 X5                ; move away from home
G90                     ; back to absolute positioning
M913 X100 Y100		  	; motor currents back to 100%
G92 X0					; set 0