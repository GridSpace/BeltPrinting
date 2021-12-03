; flowrate testing of hot end

G92 X0 Y0 Z0 E0     ; zero out axes
G28 XY              ; home XY axes
G0 Y20              ; move Y away from belt
M83                 ; relative extrusion mode
M900 K0             ; disable k-factor for test

M104 S220           ; set nozzle temp
M140 S60            ; set bed temp
M190 S60            ; wait for bed to reach tmp
M109 S220           ; wait for nozzle to reach temp
M106 S255           ; enable part cooling

M117 Purge

G0 X0 Y0.1 Z0       ; start of purge line
G0 X110 E15 F300    ; purge line
G0 E-3              ; retract
G0 Z5 F3000         ; eject Z
G92 Z0              ; reset Z for flow tests


M104 S220           ; set nozzle temp
M109 S220           ; wait for nozzle to reach temp
M117 Flow Test 190

G0 X70 Y1 Z0 F3000  ; start point
G0 E3 F100          ; engage
G0 Z20 E41.6 F60    ; 10 seconds = 10 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X80              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F90    ; 15 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X90              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F120   ; 20 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X100             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F150   ; 25 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X110             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F180   ; 30 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X120             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F210   ; 35 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X130             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F240   ; 40 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 Y30 Z40 F3000    ; belt eject 50mm
G92 Z0              ; reset Z for next tests


M104 S225           ; set nozzle temp
M109 S225           ; wait for nozzle to reach temp
M117 Flow Test 200

G0 X70 Y1 Z0 F3000  ; start point
G0 E3               ; engage
G0 Z20 E41.6 F60    ; 10 seconds = 10 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X80              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F90    ; 15 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X90              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F120   ; 20 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X100              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F150   ; 25 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X110              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F180   ; 30 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X120              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F210   ; 35 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X130              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F240   ; 40 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 Y30 Z40 F3000    ; belt eject 50mm
G92 Z0              ; reset Z for next tests


M104 S230           ; set nozzle temp
M109 S230           ; wait for nozzle to reach temp
M117 Flow Test 210

G0 X70 Y1 Z0 F3000  ; start point
G0 E3               ; engage
G0 Z20 E41.6 F60    ; 10 seconds = 10 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X80              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F90    ; 15 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X90              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F120   ; 20 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X100             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F150   ; 25 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X110             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F180   ; 30 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X120             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F210   ; 35 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X130             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F240   ; 40 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 Y30 Z40 F3000    ; belt eject 50mm
G92 Z0              ; reset Z for next tests


M104 S235           ; set nozzle temp
M109 S235           ; wait for nozzle to reach temp
M117 Flow Test 220

G0 X70 Y1 Z0 F3000  ; start point
G0 E3               ; engage
G0 Z20 E41.6 F60    ; 10 seconds = 10 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X80              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F90    ; 15 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X90              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F120   ; 20 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X100             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F150   ; 25 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X110             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F180   ; 30 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X120             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F210   ; 35 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X130             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F240   ; 40 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 Y30 Z40 F3000    ; belt eject 50mm
G92 Z0              ; reset Z for next tests


M104 S240           ; set nozzle temp
M109 S240           ; wait for nozzle to reach temp
M117 Flow Test 230

G0 X70 Y1 Z0 F3000  ; start point
G0 E3               ; engage
G0 Z20 E41.6 F60    ; 10 seconds = 10 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X80              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F90    ; 15 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X90              ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F120   ; 20 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X100             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F150   ; 25 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X110             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F180   ; 30 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X120             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F210   ; 35 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 X130             ; next start point
G0 Y1 Z0 F3000      ; next start point
G0 E3               ; engage
G0 Z20 E41.6 F240   ; 40 mm^3 / s
G0 Z30 Y0.1 F60     ; wipe / release latent pressure
G0 E-3 F3000        ; retract

G0 Y30 Z40 F3000    ; belt eject 50mm
G92 Z0              ; reset Z for next tests


M117 Done
G0 Y30 Z40 F3000    ; belt eject 50mm
M104 S0             ; turn off heating nozzle
M140 S0             ; turn off heating bed
M107                ; disable part cooling
M84                 ; disable steppers
