; homeall.g
; called to home all axes
;
M400                    ; make sure everything has stopped before we make changes
M913 X70 Y70			; drop motor currents to 70%
G91                     ; use relative positioning

G1 H1 X-310 Y-310 F3600 ; move, stopping at the endstop (first pass)
G1 H1 X5 Y5	            ; move away from home

; X or Y is homed at this point, now home the other axis
G1 H1 X-310 F3600 		; move towards axis minimum 
G1 H1 X5                ; move away from home
G1 H1 Y-310 F3600 		; move towards axis minimum 
G1 H1 Y2                ; move away from home

; home Z
G1 H1 Z340 F4000 ; move Z up until the endstop is triggered
G1 Z-5 F360      ; go back a few mm
G1 H1 Z10 F360  ; move slowly to Z axis endstop once more (second pass)
G90                     ; back to absolute positioning
M913 X100 Y100		  	; motor currents back to 100%

G92 X0Y0				; set 0
G92 Z330.15        		; set Z position to axis maximum (you may want to adjust this)