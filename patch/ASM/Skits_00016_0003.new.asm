; BATTLE
.open "../DAT_FILES_ORIGINAL/00016_0003.unknown.new", "../DAT_FILES_PATCHED/00016_0003.unknown.new", 0x03d4080
.ps2

.definelabel Game_Data_Stuff, 0x03EA8E0
; 019D3960
; one 019D5ABC  215c
; two 019D5AD0  2170

;=================================
; Skit Hooks
;=================================
.org 0x003D7410
    jal Skit_Print_Hook


.org 0x003D74D8
    jal Skit_Reset_Hook
    ; a0 has one or two


.close