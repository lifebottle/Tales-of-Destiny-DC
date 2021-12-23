.ps2
.open "../DAT_FILES_ORIGINAL/00056.md1", "../DAT_FILES_PATCHED/00056.md1", 0x003C7A80

; Keyboard

; note -->
; slps 0x0011d450
; Li v0, 0xa --> change to 0xF, title width

.org 0x003c89a0     ; Delete/Backspace
    nop             ; nop out shift (2x) value for delete position
                    ; change from 2 bytes to 1 byte

.org 0x003c89c0     ; Delete/Backspace
    nop             ; nop out removal of 2nd byte
                    ; change from 2 bytes to 1 byte

.org 0x003c9690     ; Alternating Colored Boxes
    ; nop               ; remove the alternating part
                        ; instead of noping out we are moving instructions around
    addiu s0, s0, 0x1   ; increment s0

.org 0x003C96A8     ; continue code from above
                    ; this is incrementing the 6 by 1 to print an extra pink square
                    ; move instructions up one
                    ; we removed a multiply by 1 that prob would be used if
                    ; name input were to be multiple lines?
                    ; lets hope that never happens XD
    mul.s f12, f12, f22 ; repeat
    add.s f12, f12, f25 ; repeat
    sub.s f12, f12, f26 ; repeat
    jal 0x0169e38
    add.s f12, f23, f12
    lbu v0, 0x24(s3)    ; load the 6
    addiu v0, v0, 0x1   ; incr by 1 <-- needed space for this

.org 0x003c983c     ; make outer border-box bigger by 1 (increment the 6)
    addiu v0, v0, 0x1   ; increment by 1
    mtc1 v0, f14        ; existing

.org 0x003c9800 ; Shaded empty Boxes
    nop             ; nop out drawing of remaining shaded Boxes

.org 0x003C8950 ; Position for next write
    nop             ; nop out shift (2x) for write position
                    ; change for 2 bytes to 1

.org 0x003CA09C ; Init Position on keyboard load
    nop             ; remove a shift right (divide by 2) cause old code assumed 2 bytes
                    ; change for 2 bytes to 1

.org 0x003c98e4 ; Draw underline
    cvt.s.w f12, f12    ; move this up one - there was a nop here
    lui at, 0x41c0      
    mtc1 at, f14
    lui at, 0x4180      
    mtc1 at, f20        ; put half value at f20 to cut x-pos in half

.org 0x003c9c5c
    li v0, 0x7      ; set 7 cap for pw menu

.org 0x03c9234
    lui at, 0x4218  ; password highlight position

.org 0x003C9254
    lui at, 0x42e0  ; password highlight position

.org 0x003C9C10
    lui at, 0x42e0  ; password position

.org 0x003C9C1C
    lui at, 0x4100  ; spacing for password

.org 0x003C98B0         ; underline fixing - multiply the 6 by 2
    sll v0, v0, 0x1     ; shift left once to allow double the prints

.org 0x003C9908         ; underline fixing
    mov.s f15, f21      ; repeat instruction from earlier

.org 0x003CA1C0 ; "Default" title length
    nop         ; code was shifting right (div by 2)
                ; to set the length, cause assumed 2 byte chars
                ; remove so stores actual length
                ; change for 2 bytes to 1

.org 0x003ca180 ; "Undo" title length
    nop         ; code was shifting right (div by 2)
                ; to set the length, cause assumed 2 byte chars
                ; remove so stores actual length
                ; change for 2 bytes to 1

.org 0x003C88F8 ; Adjusting the 6 cap
    ; this addr has an li v0, 0xA that is immediately overwritten so we use that
    sll v0, a2, 0x1     ; repeat code
    lbu t0, 0x5(s0)
    addiu v1, v1, 0x34
    addu v0, v0, a2
    addu v1, v1, s0
    lbu a0, 0x24(s0)    ; repeat - this is the 6 characters (or 12 on titles)
    sll a0, a0, 0x1     ; shift left once (multiply by 2)

.org 0x003C9564     ; starting x pos - increment the 6 by 1
    addiu v0, v0, 0x1   ; increment size by 1
    mtc1 v0, f02

.org 0x003c9538 ; same thing as above but for password screen
    addiu v0, v0, 0x1
    mtc1 v0, f02

.org 0x003c8474     ; Enable Undo & Default in all naming menus
    li a0, 0x9      ; Enable all 9 rows

.org 0x003C8454
    li v0, 0x4      ; set Minimum Row (gets rid of 4 "Letter"s)

.org 0x003C8CC0     ; Fix for moving right from menu option
    lb v1, 0x0(s0)  ; for branch check
    lw v0, 0x8(s0)  ; removed an lbu that was always (?) zero
    beql v1, zero, 0x003C8D10    ; changed beql (false when pw screen)
    addiu v0, v0, -0x4  ; subtract 4 for proper positioning -- only if br taken
    li v1, 0x7      ; set 7 cap
    addiu v1, v1, -0x1
    bne v1, v0, 0x003c8ce4
    addiu v1, v0, 0x1
    lbu v1, 0x1(s0)
    sw v1, 0x8(s0)

.org 0x003c8b40     ; same as above but for moving left from menu option
    lb v1, 0x0(s0)  ; for branch check
    lw v0, 0x8(s0)  ; removed an lbu that was always (?) zero
    beql v1, zero,  0x003C8B90    ; changed beql (false when pw screen)
    addiu v0, v0, -0x4  ; subtract 4 for proper positioning
    lbu v1, 0x1(s0)
    bne v1, v0, 0x003c8b64
    addiu v1, v0, -0x1
    li v1, 0x7      ; set 7 cap
    addiu v1, v1, -0x1
    sw v1, 0x8(s0)

; password movement
.org 0x003C8EE0             ; scroll down to middle word
    slti v0, v1, 0x7        ; change to end at 7

.org 0x003C8E1C
    li v0, 0x5      ; middle word goes up to 6

.org 0x003C8E08
    li v0, 0x8      ; right word goes up to 9
    beq v1, v0, 0x003c8E24  ; change to beq so process delay slot
    sw v0, 0x8(s0)  ; dunno why code writing a0 instead, lets use our v0 value

.org 0x003c9d24     ; border around keyboard options
    nop             ; dont draw it

.org 0x003C99E4     ; background for keyboard options
    nop             ; chunk em

.org 0x003C7C7C     ; Change title options to point to other options (use "Confirm" instead)
    lw a1,-0x5de8(v0)

.org 0x003ca29c
    ; null out the Next Category option
    .byte 0x00

; keyboards
; These require a 0 byte inbetween each letter
; one line
; ascii "",0,"",0,"",0,"",0,"",0,"",0,"",0,"",0,"",0,"",0

.org 0x003CA3A8 ; Cat 1 (Orig Katakana)
    .ascii "A",0,"B",0,"C",0,"D",0,"E",0,"F",0,"G",0,"H",0,"I",0,"J",0
    .ascii "K",0,"L",0,"M",0,"N",0,"O",0,"P",0,"Q",0,"R",0,"S",0,"T",0
    .ascii "U",0,"V",0,"W",0,"X",0,"Y",0,"Z",0," ",0," ",0,"[",0,"]",0
    .ascii "a",0,"b",0,"c",0,"d",0,"e",0,"f",0,"g",0,"h",0,"i",0,"j",0
    .ascii "k",0,"l",0,"m",0,"n",0,"o",0,"p",0,"q",0,"r",0,"s",0,"t",0
    .ascii "u",0,"v",0,"w",0,"x",0,"y",0,"z",0," ",0," ",0,"(",0,")",0
    .ascii "1",0,"2",0,"3",0,"4",0,"5",0,"6",0,"7",0,"8",0,"9",0,"0",0
    .ascii "!",0,"?",0,"#",0,"$",0,"%",0,"&",0,"*",0,"/",0,"'",0,"\"",0
    .ascii "-",0,"+",0,"=",0,"~",0,"^",0,".",0,",",0,"@",0,"<",0,">",0

.org 0x003CA460 ; Cat 2 (Orig Hiragana)
    .ascii "A",0,"B",0,"C",0,"D",0,"E",0,"F",0,"G",0,"H",0,"I",0,"J",0
    .ascii "K",0,"L",0,"M",0,"N",0,"O",0,"P",0,"Q",0,"R",0,"S",0,"T",0
    .ascii "U",0,"V",0,"W",0,"X",0,"Y",0,"Z",0," ",0," ",0,"[",0,"]",0
    .ascii "a",0,"b",0,"c",0,"d",0,"e",0,"f",0,"g",0,"h",0,"i",0,"j",0
    .ascii "k",0,"l",0,"m",0,"n",0,"o",0,"p",0,"q",0,"r",0,"s",0,"t",0
    .ascii "u",0,"v",0,"w",0,"x",0,"y",0,"z",0," ",0," ",0,"(",0,")",0
    .ascii "1",0,"2",0,"3",0,"4",0,"5",0,"6",0,"7",0,"8",0,"9",0,"0",0
    .ascii "!",0,"?",0,"#",0,"$",0,"%",0,"&",0,"*",0,"/",0,"'",0,"\"",0
    .ascii "-",0,"+",0,"=",0,"~",0,"^",0,".",0,",",0,"@",0,"<",0,">",0

.org 0x003CA2F0 ; Cat 3 (Orig Letters)
    .ascii "A",0,"B",0,"C",0,"D",0,"E",0,"F",0,"G",0,"H",0,"I",0,"J",0
    .ascii "K",0,"L",0,"M",0,"N",0,"O",0,"P",0,"Q",0,"R",0,"S",0,"T",0
    .ascii "U",0,"V",0,"W",0,"X",0,"Y",0,"Z",0," ",0," ",0,"[",0,"]",0
    .ascii "a",0,"b",0,"c",0,"d",0,"e",0,"f",0,"g",0,"h",0,"i",0,"j",0
    .ascii "k",0,"l",0,"m",0,"n",0,"o",0,"p",0,"q",0,"r",0,"s",0,"t",0
    .ascii "u",0,"v",0,"w",0,"x",0,"y",0,"z",0," ",0," ",0,"(",0,")",0
    .ascii "1",0,"2",0,"3",0,"4",0,"5",0,"6",0,"7",0,"8",0,"9",0,"0",0
    .ascii "!",0,"?",0,"#",0,"$",0,"%",0,"&",0,"*",0,"/",0,"'",0,"\"",0
    .ascii "-",0,"+",0,"=",0,"~",0,"^",0,".",0,",",0,"@",0,"<",0,">",0

.org 0x003CA518 ; Cat 4 (Orig Symbols)
    .ascii "A",0,"B",0,"C",0,"D",0,"E",0,"F",0,"G",0,"H",0,"I",0,"J",0
    .ascii "K",0,"L",0,"M",0,"N",0,"O",0,"P",0,"Q",0,"R",0,"S",0,"T",0
    .ascii "U",0,"V",0,"W",0,"X",0,"Y",0,"Z",0," ",0," ",0,"[",0,"]",0
    .ascii "a",0,"b",0,"c",0,"d",0,"e",0,"f",0,"g",0,"h",0,"i",0,"j",0
    .ascii "k",0,"l",0,"m",0,"n",0,"o",0,"p",0,"q",0,"r",0,"s",0,"t",0
    .ascii "u",0,"v",0,"w",0,"x",0,"y",0,"z",0," ",0," ",0,"(",0,")",0
    .ascii "1",0,"2",0,"3",0,"4",0,"5",0,"6",0,"7",0,"8",0,"9",0,"0",0
    .ascii "!",0,"?",0,"#",0,"$",0,"%",0,"&",0,"*",0,"/",0,"'",0,"\"",0
    .ascii "-",0,"+",0,"=",0,"~",0,"^",0,".",0,",",0,"@",0,"<",0,">",0

.org 0x003CA5F8
    .asciiz "Cancel"

.org 0x003CA608
    .asciiz "Confirm"

.org 0x003CA610
    .asciiz "Delete"

; not really needed anymore I guess
;.org 0x003CA618
    ;.asciiz "Letters"   ; Orig Symbols

;.org 0x003CA620
    ;.asciiz "Letters"   ; Orig Letters

;.org 0x003CA628
    ;.asciiz "Letters"   ; Orig Hiragana

;.org 0x003CA638
    ;.asciiz "Letters"   ; Orig Katakana

.close