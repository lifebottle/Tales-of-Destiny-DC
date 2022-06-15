; Color codes
COLOR_START equ 0x05, 0x05, 0x00, 0x00, 0x00
COLOR_END equ 0x05, 0x07, 0x00, 0x00, 0x00
; Name codes
STAHN equ 0x0B, 0x01, 0x00, 0x00, 0x00
RUTEE equ 0x0B, 0x02, 0x00, 0x00, 0x00
PHILIA equ 0x0B, 0x03, 0x00, 0x00, 0x00
WOODROW equ 0x0B, 0x04, 0x00, 0x00, 0x00
LEON equ 0x0B, 0x05, 0x00, 0x00, 0x00
MARY equ 0x0B, 0x06, 0x00, 0x00, 0x00
CHELSEA equ 0x0B, 0x07, 0x00, 0x00, 0x00
JOHNNY equ 0x0B, 0x08, 0x00, 0x00, 0x00
KONGMAN equ 0x0B, 0x09, 0x00, 0x00, 0x00
LILITH equ 0x0B, 0x0A, 0x00, 0x00, 0x00
DYMLOS equ 0x0B, 0x0B, 0x00, 0x00, 0x00
ATWIGHT equ 0x0B, 0x0C, 0x00, 0x00, 0x00
CHALTIER equ 0x0B, 0x0D, 0x00, 0x00, 0x00
IGTENOS equ 0x0B, 0x0E, 0x00, 0x00, 0x00
CLEMENTE equ 0x0B, 0x0F, 0x00, 0x00, 0x00
BELSERIUS equ 0x0B, 0x10, 0x00, 0x00, 0x00
LEADER equ 0x0B, 0x10, 0x27, 0x00, 0x00
GREYBUM equ 0x0B, 0x11, 0x00, 0x00, 0x00
HUGO equ 0x0B, 0x12, 0x00, 0x00, 0x00
MIKTRAN equ 0x0B, 0x13, 0x00, 0x00, 0x00
BATISTA equ 0x0B, 0x14, 0x00, 0x00, 0x00
TIBERIUS equ 0x0B, 0x15, 0x00, 0x00, 0x00
DALIS equ 0x0B, 0x16, 0x00, 0x00, 0x00
BARUK equ 0x0B, 0x17, 0x00, 0x00, 0x00
ILENE equ 0x0B, 0x18, 0x00, 0x00, 0x00
REMBRANDT equ 0x0B, 0x19, 0x00, 0x00, 0x00
MARIAN equ 0x0B, 0x1A, 0x00, 0x00, 0x00
RITORA equ 0x0B, 0x1B, 0x00, 0x00, 0x00
REYNOLDS equ 0x0B, 0x1C, 0x00, 0x00, 0x00
DARZEN equ 0x0B, 0x1D, 0x00, 0x00, 0x00
FAYTE equ 0x0B, 0x1E, 0x00, 0x00, 0x00
RIHANNA equ 0x0B, 0x1F, 0x00, 0x00, 0x00
ELEANOR equ 0x0B, 0x20, 0x00, 0x00, 0x00
FINLAY equ 0x0B, 0x21, 0x00, 0x00, 0x00
ASHLEY equ 0x0B, 0x22, 0x00, 0x00, 0x00
DRYDEN equ 0x0B, 0x23, 0x00, 0x00, 0x00
LEEN equ 0x0B, 0x24, 0x00, 0x00, 0x00
ISARD equ 0x0B, 0x25, 0x00, 0x00, 0x00
LEWEIN equ 0x0B, 0x26, 0x00, 0x00, 0x00
ASCUS equ 0x0B, 0x27, 0x00, 0x00, 0x00
MELINA equ 0x0B, 0x28, 0x00, 0x00, 0x00
AYLES equ 0x0B, 0x29, 0x00, 0x00, 0x00
GRID equ 0x0B, 0x2A, 0x00, 0x00, 0x00
JOHN equ 0x0B, 0x2B, 0x00, 0x00, 0x00
MILIE equ 0x0B, 0x2C, 0x00, 0x00, 0x00
WALT equ 0x0B, 0x2D, 0x00, 0x00, 0x00
BACCHUS equ 0x0B, 0x2E, 0x00, 0x00, 0x00
KING equ 0x0B, 0x2F, 0x00, 0x00, 0x00
QUEEN equ 0x0B, 0x30, 0x00, 0x00, 0x00
ALBA equ 0x0B, 0x31, 0x00, 0x00, 0x00

; Table with all IDs and a "pointer"/label to the corresponding table
; Need to add ID here and label to the table
BattleTable:
; Stahn Blast Caliber
.word 0x20, Table_020
.word 0x61, Table_061
.word 0x62, Table_062
.word 0x63, Table_063
.word 0x64, Table_064

; Stahn Single Victory Quotes
.word 0x2A, Table_02A
.word 0x2B, Table_02B
.word 0x2C, Table_02C
.word 0x2D, Table_02D
.word 0x2E, Table_02E
.word 0x2F, Table_02F
.word 0x30, Table_030
.word 0x31, Table_031

; Rutee Single Victory Quotes
.word 0xA1, Table_0A1
.word 0xA2, Table_0A2
.word 0xA3, Table_0A3
.word 0xA4, Table_0A4
.word 0xA5, Table_0A5
.word 0xA6, Table_0A6
.word 0xA7, Table_0A7
.word 0xA8, Table_0A8

; Philia Single Victory Quotes
.word 0x109, Table_109
.word 0x10A, Table_10A
.word 0x10B, Table_10B
.word 0x10C, Table_10C
.word 0x10D, Table_10D
.word 0x10E, Table_10E
.word 0x10F, Table_10F
.word 0x110, Table_110

; Leon Single Victory Quotes
.word 0x1C4, Table_1C4
.word 0x1C5, Table_1C5
.word 0x1C6, Table_1C6
.word 0x1C7, Table_1C7
.word 0x1C8, Table_1C8
.word 0x1C9, Table_1C9
.word 0x1CA, Table_1CA
.word 0x1CB, Table_1CB

; Woodrow Single Victory Quotes
.word 0x170, Table_170
.word 0x171, Table_171
.word 0x172, Table_172
.word 0x173, Table_173
.word 0x174, Table_174
.word 0x175, Table_175
.word 0x176, Table_176
.word 0x177, Table_177

; Mary Single Victory Quotes
.word 0x223, Table_223
.word 0x224, Table_224
.word 0x225, Table_225
.word 0x226, Table_226
.word 0x227, Table_227
.word 0x228, Table_228
.word 0x229, Table_229
.word 0x22A, Table_22A

; Kongman Single Victory Quotes
.word 0x2F5, Table_2F5
.word 0x2F6, Table_2F6
.word 0x2F7, Table_2F7
.word 0x2F8, Table_2F8
.word 0x2F9, Table_2F9
.word 0x2FA, Table_2FA
.word 0x2FB, Table_2FB
.word 0x2FC, Table_2FC

; Johnny Single Victory Quotes
.word 0x2AF, Table_2AF
.word 0x2B0, Table_2B0
.word 0x2B1, Table_2B1
.word 0x2B2, Table_2B2
.word 0x2B3, Table_2B3
.word 0x2B4, Table_2B4
.word 0x2B5, Table_2B5
.word 0x2B6, Table_2B6

; Chelsea Single Quotes
.word 0x269, Table_269
.word 0x26A, Table_26A
.word 0x26B, Table_26B
.word 0x26C, Table_26C
.word 0x26D, Table_26D
.word 0x26E, Table_26E
.word 0x26F, Table_26F
.word 0x270, Table_270

; Lilith Single Quotes
.word 0x34C, Table_34C
.word 0x34D, Table_34D
.word 0x34E, Table_34E
.word 0x34F, Table_34F
.word 0x350, Table_350
.word 0x351, Table_351
.word 0x352, Table_352
.word 0x353, Table_353

; Multi Line Quotes
.word 0x58f, Table_58f
.word 0x592, Table_592
.word 0x594, Table_594
.word 0x596, Table_596
.word 0x598, Table_598
.word 0x59a, Table_59a
.word 0x59c, Table_59c
.word 0x59e, Table_59e
.word 0x5a0, Table_5a0
.word 0x5a2, Table_5a2
.word 0x5a4, Table_5a4
.word 0x5a6, Table_5a6
.word 0x5a8, Table_5a8
.word 0x5aa, Table_5aa
.word 0x5ac, Table_5ac
.word 0x5ae, Table_5ae
.word 0x5b0, Table_5b0
.word 0x5b2, Table_5b2
.word 0x5b7, Table_5b7
.word 0x5b9, Table_5b9
.word 0x5bd, Table_5bd
.word 0x5bf, Table_5bf
.word 0x5c3, Table_5c3
.word 0x5d1, Table_5d1
.word 0x5d5, Table_5d5
.word 0x5d6, Table_5d6
.word 0x5d9, Table_5d9
.word 0x5dc, Table_5dc
.word 0x5e0, Table_5e0
.word 0x5e3, Table_5e3
.word 0x5e7, Table_5e7
.word 0x5ea, Table_5ea
.word 0x5ee, Table_5ee
.word 0x5f2, Table_5f2
.word 0x5f5, Table_5f5
.word 0x609, Table_609
.word 0x60a, Table_60a
.word 0x60b, Table_60b
.word 0x60c, Table_60c
.word 0x60e, Table_60e

; END OF TABLE
; KEEP 0000 0000 separator
.word 0x0, 0x0

; Label for Table, "Table_{id}"
Table_226:
    ; halfword (2 bytes) - voice id repeated here (sorry)
    .halfword 0x226 ; Voice Id
    ; next 2 bytes are the # of extra frames, and then the # of lines to print
    ; if a sound is really short but you want the subs to hang out a little longer
    ; then add some frames here
    ; this applies 
    .byte 0x20      ; 32 Extra Frames
    ; this is a single line so just 1 line
    .byte 0x1       ; 1 line
    ; need a word (4 bytes) pointer to a sub-table for each line
    .word Table_226_1
; Sub Table for 1st line
Table_226_1:
    ; start - frame counter to start displaying text
    .halfword 0x0
    ; end - frame counter to stop displaying text
    ; used to override and end a line before the voice clip is over
    ; for single lines can leave at 0xFFFF as itll just stop when clip ends
    .halfword 0xFFFF
    ; string
    ; can add in bytes and do like "Text",0xA,"more text"
    .asciiz COLOR_START,MARY,COLOR_END,": Now then, let's get moving!"
    .align 4

; A text will end in one of two ways:
; 1. It reaches the overriding ending frame in the line sub-table
; 2. The voice clip ends (and however many extra frames are defined in the main table passes)

; Multi Line Example
Table_5dc:
    .halfword 0x5dc         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5dc_1       ; pointer to each of the 4 sub tables in order
    .word Table_5dc_2
    .word Table_5dc_3
    .word Table_5dc_4
Table_5dc_1:
    .halfword 0x0           ; start 
    .halfword 0xA0          ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Yahoo! Victory is ours!"
    .align 4
Table_5dc_2:
    .halfword 0x80          ; start
    .halfword 0x130         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Gwahahahaha!"
    .align 4
Table_5dc_3:
    .halfword 0x120         ; start
    .halfword 0x176         ; end
    .asciiz COLOR_START,MARY,COLOR_END,": ",CHELSEA,"? What's wrong?"
    .align 4
Table_5dc_4:
    .halfword 0x160         ; start  
    .halfword 0xFFFF        ; end
    ; string
    .asciiz COLOR_START,CHELSEA,COLOR_END,": I wanted to be on ",WOODROW,"'s team..."
    .align 4

; Stahn Blast Caliber

; This one (0x20) gets re-used a lot and causes some issues
; Need to make sure the line duration (0x48) lasts into the start of the next line
; otherwise weird things happen
; (there is no delay between 0x20 and 0x61, and it uses the same sound buffer)
; (so code to check if sound is done playing never triggers until after 0x61 is done)
; (if this ends before next one starts, it will print again)
Table_020:
    .halfword 0x020     ; voice id
    .byte 0x0          ; 0 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_020_1
Table_020_1:
    .halfword 0x0       ; start  
    .halfword 0x48    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Haaaaaaah!"
    .align 4

Table_061:
    .halfword 0x061     ; voice id
    .byte 0020          ; 0 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_061_1
Table_061_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Sword of eternal flame... Unleash your power!"
    .align 4

Table_062:
    .halfword 0x062     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_062_1
Table_062_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Scorch my enemies down to their very souls!"
    .align 4

Table_063:
    .halfword 0x063     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_063_1
Table_063_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Unleash!"
    .align 4

Table_064:
    .halfword 0x064     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2           ; 2 lines
    .word Table_064_1
    .word Table_064_2
Table_064_1:
    .halfword 0x0       ; start  
    .halfword 0x50      ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Burning strike!"
    .align 4
Table_064_2:
    .halfword 0x30       ; start  
    .halfword 0xFFFF     ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Blazing Apocalypse!"
    .align 4

    

; Stahn Single Victory Quotes
Table_02A:
    .halfword 0x02A     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_02A_1
Table_02A_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Hooray!"
    .align 4

Table_02B:
    .halfword 0x02B     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_02B_1
Table_02B_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Yahoo!"
    .align 4

Table_02C:
    .halfword 0x02C     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_02C_1
Table_02C_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Alright, we won!"
    .align 4

Table_02D:
    .halfword 0x02D     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_02D_1
Table_02D_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": We are unstoppable!"
    .align 4

Table_02E:
    .halfword 0x02E     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_02E_1
Table_02E_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That was a piece of cake."
    .align 4

Table_02F:
    .halfword 0x02F     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_02F_1
Table_02F_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That was unexpected."
    .align 4

Table_030:
    .halfword 0x030     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_030_1
Table_030_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": They were pretty tough."
    .align 4

Table_031:
    .halfword 0x031     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_031_1
Table_031_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That got me really fired up!"
    .align 4

; Rutee Single Victory Quotes

Table_0A1:
    .halfword 0x0A1     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A1_1
Table_0A1_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Okay!"
    .align 4

Table_0A2:
    .halfword 0x0A2     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A2_1
Table_0A2_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": We did it!"
    .align 4

Table_0A3:
    .halfword 0x0A3     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A3_1
Table_0A3_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": That was perfect!"
    .align 4

Table_0A4:
    .halfword 0x0A4     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A4_1
Table_0A4_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Geez, what a waste of my time!"
    .align 4

Table_0A5:
    .halfword 0x0A5     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A5_1
Table_0A5_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": This pushover wasn't even worth the lens."
    .align 4

Table_0A6:
    .halfword 0x0A6     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A6_1
Table_0A6_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Quit messing around!"
    .align 4

Table_0A7:
    .halfword 0x0A7     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A7_1
Table_0A7_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Totally unprofitable."
    .align 4

Table_0A8:
    .halfword 0x0A8     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_0A8_1
Table_0A8_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": The more you borrow, the more you pay back!",0x01,"I don't make the rules!"
    .align 4

; Philia Single Victory Quotes

Table_109:
    .halfword 0x109     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_109_1
Table_109_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Phew, we did it..."
    .align 4

Table_10a:
    .halfword 0x10a     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_10a_1
Table_10a_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Did that hurt? My apologies."
    .align 4

Table_10B:
    .halfword 0x10B     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_10B_1
Table_10B_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Atamoni has protected us!"
    .align 4

Table_10C:
    .halfword 0x10C     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_10C_1
Table_10C_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": I'm doing the best I can!"
    .align 4

Table_10D:
    .halfword 0x10D     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_10D_1
Table_10D_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Was I of use?"
    .align 4

Table_10E:
    .halfword 0x10E     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_10E_1
Table_10E_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": This, too, is part of my training."
    .align 4

Table_10F:
    .halfword 0x10F     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_10F_1
Table_10F_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Oh Atamoni, were you testing us?"
    .align 4

Table_110:
    .halfword 0x110     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_110_1
Table_110_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Reflect on your sins, and find salvation!"
    .align 4

; Leon Single Victory Quotes

Table_1C4:
    .halfword 0x1C4     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1C4_1
Table_1C4_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": The outcome will always be the same, no matter what!"
    .align 4

Table_1C5:
    .halfword 0x1C5     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1C5_1
Table_1C5_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": They were stupid to face me."
    .align 4

Table_1C6:
    .halfword 0x1C6     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1C6_1
Table_1C6_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Not even worth words."
    .align 4

Table_1C7:
    .halfword 0x1C7     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1C7_1
Table_1C7_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I doubt we'll run into the likes of you ever again."
    .align 4

Table_1C8:
    .halfword 0x1C8     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1C8_1
Table_1C8_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Small fry should stick to the pond."
    .align 4

Table_1C9:
    .halfword 0x1C9     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1C9_1
Table_1C9_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": What a waste of time..."
    .align 4

Table_1Ca:
    .halfword 0x1Ca     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1Ca_1
Table_1Ca_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I wasn't prepared for that... I'm getting sloppy."
    .align 4

Table_1Cb:
    .halfword 0x1Cb     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_1Cb_1
Table_1Cb_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Did you really think you'd win!?"
    .align 4

; Woodrow Single Victory Quotes

Table_170:
    .halfword 0x170     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_170_1
Table_170_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": A futile effort..."
    .align 4

Table_171:
    .halfword 0x171     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_171_1
Table_171_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": You were unlucky."
    .align 4

Table_172:
    .halfword 0x172     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_172_1
Table_172_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I cannot forgive those who block my path!"
    .align 4

Table_173:
    .halfword 0x173     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_173_1
Table_173_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Great. Let's keep this up."
    .align 4

Table_174:
    .halfword 0x174     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_174_1
Table_174_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Be more carfeul of who you attack next time."
    .align 4

Table_175:
    .halfword 0x175     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_175_1
Table_175_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": That battle felt more like a war..."
    .align 4

Table_176:
    .halfword 0x176     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_176_1
Table_176_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": What a fierce opponent... We need to be more careful."
    .align 4

Table_177:
    .halfword 0x177     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_177_1
Table_177_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I have a reason to fight! I won't lose!"
    .align 4

; Mary Single Victory Quotes

Table_223:
    .halfword 0x223     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_223_1
Table_223_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Hahahaha!"
    .align 4

Table_224:
    .halfword 0x224     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_224_1
Table_224_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": That was pretty fun!"
    .align 4

Table_225:
    .halfword 0x225     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_225_1
Table_225_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Huh? Over already?"
    .align 4

Table_227:
    .halfword 0x227     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_227_1
Table_227_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": They sure acted tough, huh?"
    .align 4

Table_228:
    .halfword 0x228     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_228_1
Table_228_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": That dragged on way too long..."
    .align 4

Table_229:
    .halfword 0x229     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_229_1
Table_229_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": That was a close one..."
    .align 4

Table_22A:
    .halfword 0x22A     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_22A_1
Table_22A_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Excessive? No. I put it out of its misery."
    .align 4

; Kongman Single Victory Quotes

Table_2F5:
    .halfword 0x2F5     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2F5_1
Table_2F5_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I AM THE CHAMPION!!!"
    .align 4

Table_2F6:
    .halfword 0x2F6     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2F6_1
Table_2F6_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": No problem!"
    .align 4

Table_2F7:
    .halfword 0x2F7     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2F7_1
Table_2F7_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Now! Swear on my bicep that you'll never do evil again!"
    .align 4

Table_2F8:
    .halfword 0x2F8     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2F8_1
Table_2F8_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Behold, my glorious MUSCLES!!!"
    .align 4

Table_2F9:
    .halfword 0x2F9     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2F9_1
Table_2F9_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": A Round One K.O.! That's how it's done!"
    .align 4

Table_2FA:
    .halfword 0x2FA     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2FA_1
Table_2FA_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": That sure went the distance..."
    .align 4

Table_2FB:
    .halfword 0x2FB     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2FB_1
Table_2FB_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Whew, they even did a number on me. Not bad!"
    .align 4

Table_2FC:
    .halfword 0x2FC     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2FC_1
Table_2FC_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": This is my MUSCLE CIRCUS!"
    .align 4


; Johnny Single Victory Quotes

Table_2AF:
    .halfword 0x2AF     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2AF_1
Table_2AF_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Have you fallen for me yet?"
    .align 4

Table_2B0:
    .halfword 0x2B0     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B0_1
Table_2B0_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Be mesmerized!"
    .align 4

Table_2B1:
    .halfword 0x2B1     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B1_1
Table_2B1_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Were they supposed to be tough?"
    .align 4

Table_2B2:
    .halfword 0x2B2     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B2_1
Table_2B2_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Is it time to return already?"
    .align 4

Table_2B3:
    .halfword 0x2B3     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B3_1
Table_2B3_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Tsk tsk, quite lacking."
    .align 4

Table_2B4:
    .halfword 0x2B4     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B4_1
Table_2B4_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": I'm sorry, I don't do encores."
    .align 4

Table_2B5:
    .halfword 0x2B5     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B5_1
Table_2B5_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Maybe things got a little too heated..."
    .align 4

Table_2B6:
    .halfword 0x2B6     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_2B6_1
Table_2B6_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Were you not pleased? Will we meet again?"
    .align 4


; Chelsea Single Quotes

Table_269:
    .halfword 0x269     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_269_1
Table_269_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": All criminals accounted for."
    .align 4

Table_26A:
    .halfword 0x26A     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_26A_1
Table_26A_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Karmatic justice!"
    .align 4

Table_26B:
    .halfword 0x26B     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_26B_1
Table_26B_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Love plus friendship equals victory!"
    .align 4

Table_26C:
    .halfword 0x26C     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_26C_1
Table_26C_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Such dummies, thinking that they could beat us."
    .align 4

Table_26D:
    .halfword 0x26D     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_26D_1
Table_26D_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Great work, everyone!"
    .align 4

Table_26E:
    .halfword 0x26E     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_26E_1
Table_26E_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": That was a bit tricky..."
    .align 4

Table_26F:
    .halfword 0x26F     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_26F_1
Table_26F_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Woohoo! We did it!"
    .align 4

Table_270:
    .halfword 0x270     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_270_1
Table_270_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": I am a mighty warrior!"
    .align 4

; Lilith Single Quotes

Table_34C:
    .halfword 0x34C     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_34C_1
Table_34C_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": They had terrible taste."
    .align 4

Table_34D:
    .halfword 0x34D     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_34D_1
Table_34D_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Whew... good work."
    .align 4

Table_34E:
    .halfword 0x34E     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_34E_1
Table_34E_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": What a mess to clean up."
    .align 4

Table_34F:
    .halfword 0x34F     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_34F_1
Table_34F_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Bon voyage."
    .align 4

Table_350:
    .halfword 0x350     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_350_1
Table_350_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": They needed some more time in the oven."
    .align 4

Table_351:
    .halfword 0x351     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_351_1
Table_351_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": That was not an easy fight."
    .align 4

Table_352:
    .halfword 0x352     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_352_1
Table_352_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Huh, maybe they had some skill..."
    .align 4

Table_353:
    .halfword 0x353     ; voice id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1           ; 1 line
    .word Table_353_1
Table_353_1:
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Learn some responsibility, won't you?"
    .align 4


Table_58f:
    .halfword 0x58f         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x3               ; 3 lines
    .word Table_58f_1       
    .word Table_58f_2       
    .word Table_58f_3
Table_58f_1:
    .halfword 0x0           ; start 
    .halfword 0x70          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Zzzz..."
    .align 4
Table_58f_2:
    .halfword 0x4C          ; start
    .halfword 0xC8         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Hold on, now's not the time to sleep!"
    .align 4
Table_58f_3:
    .halfword 0xB0          ; start
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Forget it, leave him."
    .align 4


Table_592:
    .halfword 0x592         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_592_1       
    .word Table_592_2   
Table_592_1:
    .halfword 0x0           ; start 
    .halfword 0xAA          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": You couldn't even lay a finger on me!"
    .align 4
Table_592_2:
    .halfword 0x90          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Well, that's not fair. Some of them don't even have fingers!"
    .align 4


Table_594:
    .halfword 0x594         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_594_1       
    .word Table_594_2   
Table_594_1:
    .halfword 0x0           ; start 
    .halfword 0x80          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I'm a pretty strong figher now."
    .align 4
Table_594_2:
    .halfword 0x66          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": Incorrect, you're still a rookie!"
    .align 4


Table_596:
    .halfword 0x596         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_596_1       
    .word Table_596_2   
Table_596_1:
    .halfword 0x0           ; start 
    .halfword 0x7A          ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Huh? Is it over already?"
    .align 4
Table_596_2:
    .halfword 0x60          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": You're the one who dealt the final blow..."
    .align 4


Table_598:
    .halfword 0x598         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_598_1       
    .word Table_598_2   
Table_598_1:
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": So this is the swordian's power..."
    .align 4
Table_598_2:
    .halfword 0x80          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": A swordian's strength is reliant on their master's."
    .align 4


Table_59a:
    .halfword 0x59a         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_59a_1       
    .word Table_59a_2   
Table_59a_1:
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": This blade strikes true."
    .align 4
Table_59a_2:
    .halfword 0x80          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": Your swift strikes always hit their mark."
    .align 4


Table_59c:
    .halfword 0x59c         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_59c_1       
    .word Table_59c_2   
Table_59c_1:
    .halfword 0x0           ; start 
    .halfword 0x9C          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Pitiful! Wasn't worth the effort."
    .align 4
Table_59c_2:
    .halfword 0x88          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": You're amazing, Young Master!"
    .align 4


Table_59e:
    .halfword 0x59e         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_59e_1       
    .word Table_59e_2   
Table_59e_1:
    .halfword 0x0           ; start 
    .halfword 0xB0          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": We won! Did you see that Lord - Hey! You're not ",WOODROW,"!"
    .align 4
Table_59e_2:
    .halfword 0x94          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I've been here the whole time!"
    .align 4


Table_5a0:
    .halfword 0x5a0         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5a0_1       
    .word Table_5a0_2   
Table_5a0_1:
    .halfword 0x0           ; start 
    .halfword 0xC0          ; end
    .asciiz COLOR_START,MARY,COLOR_END,": They were so tough I had to unleash my inner beast."
    .align 4
Table_5a0_2:
    .halfword 0xB0          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I'm pretty sure that's how you always fight..."
    .align 4


Table_5a2:
    .halfword 0x5a2         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5a2_1       
    .word Table_5a2_2   
Table_5a2_1:
    .halfword 0x0           ; start 
    .halfword 0xA0          ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Wasn't my singing mesmerizing?"
    .align 4
Table_5a2_2:
    .halfword 0x90          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I wouldn't call that a song..."
    .align 4


Table_5a4:
    .halfword 0x5a4         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5a4_1       
    .word Table_5a4_2   
Table_5a4_1:
    .halfword 0x0           ; start 
    .halfword 0x88          ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": You're so careless, big brother!"
    .align 4
Table_5a4_2:
    .halfword 0x70          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": *sigh* I have nothing to say..."
    .align 4


Table_5a6:
    .halfword 0x5a6         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5a6_1       
    .word Table_5a6_2   
Table_5a6_1:
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": How're you able to fight so well in that getup?"
    .align 4
Table_5a6_2:
    .halfword 0xB0          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": You're one to talk, ",JOHNNY,"..."
    .align 4


Table_5a8:
    .halfword 0x5a8         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5a8_1       
    .word Table_5a8_2   
Table_5a8_1:
    .halfword 0x0           ; start 
    .halfword 0xB0          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Ya need to eat more meat! Yer underweight!"
    .align 4
Table_5a8_2:
    .halfword 0x90          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": They're already nothing but bones..."
    .align 4


Table_5aa:
    .halfword 0x5aa         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5aa_1       
    .word Table_5aa_2   
Table_5aa_1:
    .halfword 0x0           ; start 
    .halfword 0xD0          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That was tough... Don't think we'd survive a second round."
    .align 4
Table_5aa_2:
    .halfword 0xB8          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I never want to encounter him again."
    .align 4


Table_5ac:
    .halfword 0x5ac         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5ac_1       
    .word Table_5ac_2   
Table_5ac_1:
    .halfword 0x0           ; start 
    .halfword 0x178          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Weapons are evil! We don't need weapons! Gyahahaha!"
    .align 4
Table_5ac_2:
    .halfword 0x168         ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": He's not referring to me, is he...?"
    .align 4


Table_5ae:
    .halfword 0x5ae         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5ae_1       
    .word Table_5ae_2   
Table_5ae_1:
    .halfword 0x0           ; start 
    .halfword 0xC0          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": ",CHELSEA,", what did that tree say just now?"
    .align 4
Table_5ae_2:
    .halfword 0xA8          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Wha!? U-Uhm, n-nothing special...?"
    .align 4


Table_5b0:
    .halfword 0x5b0         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5b0_1       
    .word Table_5b0_2   
Table_5b0_1:
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Do bats have a strong or weak voice?"
    .align 4
Table_5b0_2:
    .halfword 0xB8          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Why would you ask me such a question...?"
    .align 4


Table_5b2:
    .halfword 0x5b2         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5b2_1       
    .word Table_5b2_2   
Table_5b2_1:
    .halfword 0x0           ; start 
    .halfword 0x7B          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Birds of prey strike again!"
    .align 4
Table_5b2_2:
    .halfword 0x60          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": ...Are you talking about us or them?"
    .align 4


Table_5b7:
    .halfword 0x5b7         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5b7_1       
    .word Table_5b7_2   
Table_5b7_1:
    .halfword 0x0           ; start 
    .halfword 0xB0          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": How do I say this? GET OUTTA THE WAY!"
    .align 4
Table_5b7_2:
    .halfword 0xA0          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Seriously..."
    .align 4


Table_5b9:
    .halfword 0x5b9         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5b9_1       
    .word Table_5b9_2       
    .word Table_5b9_3       
    .word Table_5b9_4   
Table_5b9_1:
    .halfword 0x0           ; start 
    .halfword 0xF0          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": My body is flawless! The cold means nothing!"
    .align 4
Table_5b9_2:
    .halfword 0xE0          ; start
    .halfword 0x188         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Doesn't looking at him make you feel colder?"
    .align 4
Table_5b9_3:
    .halfword 0x168          ; start
    .halfword 0x210         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": ",RUTEE,", why would you say that?"
    .align 4
Table_5b9_4:
    .halfword 0x200          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Mind over matter, girly."
    .align 4


Table_5bd:
    .halfword 0x5bd         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5bd_1       
    .word Table_5bd_2   
Table_5bd_1:
    .halfword 0x0           ; start 
    .halfword 0x94          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Are you seriously searching for gald DURING BATTLE?!"
    .align 4
Table_5bd_2:
    .halfword 0x78          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": If I don't, how can I ever reach one million?"
    .align 4


Table_5bf:
    .halfword 0x5bf         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5bf_1       
    .word Table_5bf_2   
Table_5bf_1:
    .halfword 0x0           ; start 
    .halfword 0x50          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": What are we?"
    .align 4
Table_5bf_2:
    .halfword 0x40          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,"Everyone",COLOR_END,": UNBEATABLE!"
    .align 4


Table_5c3:
    .halfword 0x5c3         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_5c3_1       
    .word Table_5c3_2   
Table_5c3_1:
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Well done, everyone."
    .align 4
Table_5c3_2:
    .halfword 0x68          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Even me, Lord ",WOODROW,"?"
    .align 4


Table_5d1:
    .halfword 0x5d1         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5d1_1       
    .word Table_5d1_2          
    .word Table_5d1_3          
    .word Table_5d1_4   
Table_5d1_1:
    .halfword 0x0           ; start 
    .halfword 0x30          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Love!"
    .align 4
Table_5d1_2:
    .halfword 0x20          ; start
    .halfword 0x60          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Friendship!"
    .align 4
Table_5d1_3:
    .halfword 0x50          ; start
    .halfword 0x90          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": VICTORY!"
    .align 4
Table_5d1_4:
    .halfword 0x80          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Yeah!!"
    .align 4


Table_5d5:
    .halfword 0x5d5         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1               ; 1 lines
    .word Table_5d5_1 
Table_5d5_1:
    .halfword 0x0           ; start 
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I am VICTORIOUS... but why do I feel empty?"
    .align 4


Table_5d6:
    .halfword 0x5d6         ; Voice Id
    .byte 0x30          ; 48 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5d6_1       
    .word Table_5d6_2       
    .word Table_5d6_3       
    .word Table_5d6_4   
Table_5d6_1:
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Now that is how we do it!"
    .align 4
Table_5d6_2:
    .halfword 0x60          ; start
    .halfword 0x130         ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Well, that is how YOU do it."
    .align 4
Table_5d6_3:
    .halfword 0x120          ; start
    .halfword 0x1D0         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Seriously, that's all you..."
    .align 4
Table_5d6_4:
    .halfword 0x1B8          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": ..."
    .align 4


Table_5d9:
    .halfword 0x5d9         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x3               ; 3 lines
    .word Table_5d9_1       
    .word Table_5d9_2      
    .word Table_5d9_3   
Table_5d9_1:
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": What a satisfying victory."
    .align 4
Table_5d9_2:
    .halfword 0x68          ; start
    .halfword 0xd8         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Minus one person."
    .align 4
Table_5d9_3:
    .halfword 0xC8           ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Yes, please forgive us, ",STAHN,"."
    .align 4


Table_5e0:
    .halfword 0x5e0         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x3               ; 3 lines
    .word Table_5e0_1       
    .word Table_5e0_2    
    .word Table_5e0_3   
Table_5e0_1:
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Big bro, we won!"
    .align 4
Table_5e0_2:
    .halfword 0x80          ; start
    .halfword 0x118         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Hey... How long're you gonna follow me around, anyway?"
    .align 4
Table_5e0_3:
    .halfword 0x108          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": How long until you come back home!?"
    .align 4


Table_5e3:
    .halfword 0x5e3         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5e3_1       
    .word Table_5e3_2    
    .word Table_5e3_3    
    .word Table_5e3_4   
Table_5e3_1:
    .halfword 0x0           ; start 
    .halfword 0x58          ; end
    .asciiz COLOR_START,MARY,COLOR_END,": It's over!"
    .align 4
Table_5e3_2:
    .halfword 0x40          ; start
    .halfword 0xD8         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Girl power achieved victory!"
    .align 4
Table_5e3_3:
    .halfword 0xB8          ; start
    .halfword 0x17C         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Hmm, perhaps we don't need the guys?"
    .align 4
Table_5e3_4:
    .halfword 0x160          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Well..."
    .align 4


Table_5e7:
    .halfword 0x5e7         ; Voice Id
    .byte 0x40          ; 64 Extra Frames 
    .byte 0x3               ; 3 lines
    .word Table_5e7_1       
    .word Table_5e7_2   
    .word Table_5e7_3   
    .word Table_5e7_4   
Table_5e7_1:
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": We are invincible!"
    .align 4
Table_5e7_2:
    .halfword 0x6C          ; start
    .halfword 0x110         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Nothing can withstand the might of our muscles!"
    .align 4
    
Table_5e7_3:
    .halfword 0xF0          ; start
    .halfword 0x1A0         ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": This party might be a little too macho for me..."
    .align 4
    
Table_5e7_4:
    .halfword 0x198          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": ..."
    .align 4


Table_5ea:
    .halfword 0x5ea         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5ea_1       
    .word Table_5ea_2      
    .word Table_5ea_3      
    .word Table_5ea_4   
Table_5ea_1:
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": It's pretty quiet when ",STAHN,"'s not around."
    .align 4
Table_5ea_2:
    .halfword 0xB0          ; start
    .halfword 0x1A0         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Without Lord ",WOODROW,", I don't think I can win..."
    .align 4
Table_5ea_3:
    .halfword 0x188         ; start
    .halfword 0x260         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": My muscles ache without ",PHILIA,"."
    .align 4
Table_5ea_4:
    .halfword 0x238          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Wait, what are you two going on about?"
    .align 4


Table_5ee:
    .halfword 0x5ee         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5ee_1       
    .word Table_5ee_2     
    .word Table_5ee_3     
    .word Table_5ee_4   
Table_5ee_1:
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": What is it, ",STAHN,"?"
    .align 4
Table_5ee_2:
    .halfword 0x50          ; start
    .halfword 0x108         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I feel like I've been going around in circles."
    .align 4
Table_5ee_3:
    .halfword 0xF0         ; start
    .halfword 0x180         ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I have also felt like that before..."
    .align 4
Table_5ee_4:
    .halfword 0x160          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I wonder what causes that feeling..."
    .align 4


Table_5f2:
    .halfword 0x5f2         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x3               ; 3 lines
    .word Table_5f2_1       
    .word Table_5f2_2      
    .word Table_5f2_3   
Table_5f2_1:
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": The hourglass is quite effective."
    .align 4
Table_5f2_2:
    .halfword 0xBC          ; start
    .halfword 0x180         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I could sleep as much as I want with this."
    .align 4
Table_5f2_3:
    .halfword 0x160          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": That would be the worst use of it ever."
    .align 4


Table_5f5:
    .halfword 0x5f5         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x4               ; 4 lines
    .word Table_5f5_1       
    .word Table_5f5_2       
    .word Table_5f5_3       
    .word Table_5f5_4   
Table_5f5_1:
    .halfword 0x0           ; start 
    .halfword 0x30          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Love!"
    .align 4
Table_5f5_2:
    .halfword 0x20          ; start
    .halfword 0x60          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Friendship!"
    .align 4
Table_5f5_3:
    .halfword 0x48          ; start
    .halfword 0x90          ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Cooking!"
    .align 4
Table_5f5_4:
    .halfword 0x78          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Yeah! Wait, what?"
    .align 4


Table_609:
    .halfword 0x609         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1               ; 1 lines
    .word Table_609_1      
Table_609_1:
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Get out of my way if you want to live!"
    .align 4


Table_60a:
    .halfword 0x60a         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x1               ; 1 lines
    .word Table_60a_1      
Table_60a_1:
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Don't push your luck, weakling!"
    .align 4


Table_60b:
    .halfword 0x60b         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 1 lines
    .word Table_60b_1       
Table_60b_1:
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I'll cut down anyone in my way."
    .align 4


Table_60c:
    .halfword 0x60c         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_60c_1       
    .word Table_60c_2   
Table_60c_1:
    .halfword 0x0           ; start 
    .halfword 0x60          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": What a pushover."
    .align 4
Table_60c_2:
    .halfword 0x42          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Would be nice if all of them were like that."
    .align 4


Table_60e:
    .halfword 0x60e         ; Voice Id
    .byte 0x20          ; 32 Extra Frames 
    .byte 0x2               ; 2 lines
    .word Table_60e_1       
    .word Table_60e_2   
Table_60e_1:
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Amazing as always, Young Master!"
    .align 4
Table_60e_2:
    .halfword 0x80          ; start
    .halfword 0xFFFF         ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Didn't even require much effort."
    .align 4

