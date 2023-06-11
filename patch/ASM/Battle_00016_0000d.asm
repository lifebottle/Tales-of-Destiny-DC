; BATTLE
.open "../DAT_FILES_ORIGINAL/00016_0000d.unknown", "../DAT_FILES_PATCHED/00016_0000d.unknown", 0x03d4080
.ps2

.definelabel Pause_Flag, 0x0041B0AF
.definelabel Print_String, 0x010fc70
.definelabel BC_FLAG, 0x004244BC

;=================================
; Battle Sub Hooks
;=================================
.org 0x003d4144
    jal Display_Text_Battle_Wrapper
    nop

.org 0x003F8CF4
    jal Setup_Text_Battle_Wrapper
    nop

.org 0x0406a08
    jal Battle_End_Wrapper

.org 0x0040642c
    jal Battle_Victory_Wrapper

.org 0x003eafd4
    jal Blast_Caliber_Wrapper

;=================================
; Shared Blast Caliber Priority Fix?
;=================================
; No idea if this will cause issues or not
; Ran into issues where Stahns first clip of shared BCs werent playing
; this a2 seems to be some sort of priority system
; and a2 being 5 meant it wouldnt play if resources were locked up
; when it should just overwrite cause its a bc?
;.org 0x0014752C
;    li a2, 0x1

;=================================
; Blast Caliber Text Adjustments
;=================================
.org 0x3eb96c
    ; "BLAST" text adjustments
    sw s1, 0x28(v0)         ; remove jal to get a0 pointer to "BLAST"
    lui t2, 0x7ff
    li a0, BLAST_CALIBER    ; use our own text pointer :)
    addiu a1, s0, 0x200     ; x position
    li a2, 0x100            ; new y position (previously 0x280)

.org 0x003eb87c
    li a2, 0x7a80           ; "BLAST" blue line y-pos adj from 0x7c00

.org 0x03eb9fc
    nop
    ;jal Clear_Queue         ; nop out printing the 2nd text "CALIBER"
                            ;

.org 0x3eb930
    nop                     ; nop out the 2nd blue line

;=================================
; Sleep / Weak Pointer Swap
;=================================

;orig_file equ "../DAT_FILES_ORIGINAL/00016_0000d.unknown"
; Starts at 0x03d4080
; first pointer at 39CE0
; second pointer at 39CE8

;.org 0x0040dd60     ; Originally pointing to "WEAK"
    ;.word readU32(orig_file, 0x39CE8)   ; point to "SLEEP" now

;.org 0x0040dd68     ; Originally pointing to "SLEEP"
    ;.word readU32(orig_file, 0x39CE0)   ; point to "WEAK" now

.close