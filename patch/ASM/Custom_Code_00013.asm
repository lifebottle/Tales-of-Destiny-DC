.open "../DAT_FILES_ORIGINAL/00013.bin", "../DAT_FILES_PATCHED/00013.bin", 0x04A36C0
.ps2

.org 0x4B5000
.asciiz "Start of Battle Sub Code"
.asciiz "By Julian Lightfellow"
.align 4

;=================================
; Battle Hook Wrappers
;=================================
.func Display_Text_Battle_Wrapper
    ;=================================
    ; Hooked at Battle:0x003D4144
    ; Runs Every Frame
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    
    jal 0x003d4428
    nop

    jal Process_Display_Text
    nop

@@end:
    lw ra, 0x1c(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Setup_Text_Battle_Wrapper
    ;=================================
    ; Hooked at Battle:0x003F8CF4
    ; Runs whenever a new sound starts playing
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw a0, 0x18(sp)
    sw a1, 0x14(sp)
    sw a2, 0x10(sp)
    sw a3, 0xc(sp)

    jal Setup_Text
    move a0, s0     ; sound buffer

    lw a0, 0x18(sp)
    lw a1, 0x14(sp)
    lw a2, 0x10(sp)
    lw a3, 0xc(sp)

    ; repeat lines removed
    dmove s1, a2
    lb v1, 0x72Ae(a0)

@@end:
    lw ra, 0x1c(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Battle_Victory_Wrapper
    ;=================================
    ; Hooked at Battle:0x0040642c
    ; Runs when battle transitions into victory screen
    ; Clear out queue and any existing texts
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)

    jal 0x003f9290
    nop

    jal Clear_Queue
    nop

    @@end:
    lw ra, 0x1c(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Battle_End_Wrapper
    ;=================================
    ; Hooked at Battle:0x0406a08
    ; Runs when battle transitions from victory screen into black screen
    ; Clear out queue and any existing texts
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)

    jal 0x003ea9a8
    nop

    jal Clear_Queue
    nop

    @@end:
    lw ra, 0x1c(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

;=================================
; Sound Test Hook Wrappers
;=================================
.func Display_Text_Sound_Test_Wrapper
    ;=================================
    ; Hooked at SoundTest:0x003b8ddc
    ; Runs Every Frame
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    
    ; need to save a0 for sound test sound area thingy
    sw a0, 0x14(sp)

    jal 0x003b80c0
    nop

    lw a0, 0x14(sp)
    addiu a0, a0, 0x4000    ; add 8000
    jal Process_Display_Text_Sound_Test
    addiu a0, a0, 0x4000    ; add 8000

    @@end:
    lw s0, 0x18(sp)
    lw ra, 0x1c(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Setup_Text_Sound_Test_Wrapper
    ;=================================
    ; Hooked at SoundTest:0x003b8348
    ; Runs whenever a new sound starts playing
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw a0, 0x18(sp)
    sw a1, 0x14(sp)
    sw a2, 0x10(sp)
    sw a3, 0xc(sp)

    ; we set a0 (sound area) to FFFFFFFF since sound test doesnt use

    li a0, 0xFFFFFFFF          ; sound area FFFFFFFF
    jal Setup_Text
    lw a1, 0x0(a2)      ; battle id

    lw a0, 0x18(sp)
    lw a1, 0x14(sp)
    lw a2, 0x10(sp)
    lw a3, 0xc(sp)
    ; repeat lines removed
    li s3, 0x1
    lw v0, 0x0(a2)

@@end:
    lw ra, 0x1c(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

;=================================
; Battle Sub Functions
;=================================
.func Setup_Text 
    ;=================================
    ; Hook on voice clip starting
    ; Check if its in our table
    ; And set it up if so
    ;=================================

	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)

    ; a0 = sound info area - we save
    ; a1 = sound id
    
    ; check if a1 is in our table AND get pointer?
    li s0, BattleTable
@@start_loop:
    lw s1, 0x0(s0)
    ; s0 = table
    ; s1 = sound id; need to check for 0 (end and do nothing)
    ; or s1 == a1 (add to queue)

    beq s1, zero, @@end     ; if zero jump to end
    nop

    ; if not equal restart loop
    bne s1, a1, @@start_loop
    ; increment a0 by 8
    addiu s0, s0, 0x8

    ; if reached here --> matched and need to add to queue
    ; a0 = sound area, a1 = sound id
    ; a1 needs to be pointer to the table not just the id?
    jal Add_Text_To_Sound_Queue
    addiu a1, s0, -0x4  

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    lw s2, 0x10(sp)
    lw s3, 0xc(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Add_Text_To_Sound_Queue
    ;=================================
    ; Sound is in our table
    ; So add is to our queue
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)

    li s0, SoundQueue
    ; sound queue can only hold 5 items at once
    ; 0x0(s0) will have a1
    ; 0x4(s0) will have a0
    ; loop until we find an empty slot in those 5 and we add
    li s2, 0x6  ; s2 = counter
@@start_loop:
    lw s1, 0x0(s0)
    ; if zero, we can use this and write to here
    ; if not zero, increment counter and go to 5
    bne s1, zero, @@loop_two
    addiu s2, s2, -0x1       ; decrement counter

    ; if reached here, found place to write to
    sw a1, 0x0(s0)
    b @@end
    sw a0, 0x4(s0)
    
@@loop_two:
    ; check if s2 is zero
    bne s2, zero, @@start_loop  ; not zero, loop again
    addiu s0, s0, 0x8           ; increment s0 by 8 (width of structure)

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    lw s2, 0x10(sp)
    lw s3, 0xc(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Process_Display_Text
    ;=================================
    ; Run Every Frame:
    ; Check if existing items in TextA/B need to be removed
    ; -- Is the sound done playing or did it reach the end frame?
    ; Check if item in Sound Queue needs to be removed
    ; -- Is sound done playing?
    ; Check if item from Sound Queue needs to be assigned to TextA/B
    ; -- Is sound playing and does current frame == starting frame?
    ; Finally, print whats in TextA/B
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)

    li a0, TextA
    jal Check_Frame_Count_Ended
    nop
    
    li a0, TextB
    jal Check_Frame_Count_Ended
    nop

    li a0, TextA
    jal Check_Sound_Done_Playing
    nop

    li a0, TextB
    jal Check_Sound_Done_Playing
    nop
    
    jal Process_Sound_Queue
    nop

    li a0, TextA
    li a1, TextParamA
    li a2, TextWidthA
    jal Print_Text      ; switch a3/y pos later to variable
    li a3, 0x80E0

    li a0, TextB
    li a1, TextParamB
    li a2, TextWidthB
    jal Print_Text      ; switch a3/y pos later to variable
    li a3, 0x8170

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Check_Frame_Count_Ended
    ;=================================
    ; Check if sound frame counter has passed the end counter for the item
    ; This is used in multi-line sounds
    ; Single line sounds generally have an ending frame count of 0xFFFF
    ; and rely on the sound clip ending instead
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)

    ; a0 = text area
    ; 0x0(a0) = buffer area
    ; 0xC(a0) = last frame
    lw s0, 0x0(a0)
    beq s0, zero, @@end     ; if no buffer area, blank, do nothing, end
    lhu s1, 0xC(a0)

    ;lh s0, 0x420(s0)       ; we used to get the frame count from sound buffer
                            ; but instead we only do that at the start
                            ; and track inside our structure

    lw s0, 0x18(a0)         ; read current frame
    addiu v0, s0, 0x1       ; increment
    sw v0, 0x18(a0)         ; save
    ; s0 = frame counter, s1 = text max frame counter
    blt s0, s1, @@end       ; if frame counter < max frame, do nothing -- end
    nop
    ; else, we empty out a0 (Text A/B)
    sw zero, 0x0(a0)
    sw zero, 0x4(a0)
    sw zero, 0x8(a0)
    sw zero, 0xC(a0)
    sw zero, 0x10(a0)
    sw zero, 0x14(a0)
    sw zero, 0x18(a0)

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Check_Sound_Done_Playing
    ;=================================
    ; Check if sound is done playing
    ; If it is still playing:
    ; -- Increment our own frame counter (check if not paused)
    ; -- If sound is done playing, start a new counter
    ;    for extra frames
    ; -- Once extra frames are up, we remove from TextA/B
    ;    and from the queue
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)

    move s0, a0

    ; a0 = text area
    ; 0x0(a0) = buffer area
    ; 0x8(a0) = last frame
    lw a0, 0x0(s0)
    beq a0, zero, @@end     ; if no buffer area, blank, do nothing, end
    nop

    lw s1, 0x10(s0)
    bne s1, zero, @@post_frame_checks
    nop

    jal 0x03f92c8   ; battle only - need to look for equivalent in sound menu
                    ; or write my own!
    nop

    li s1, 0x1
    beq v1, s1, @@end       ; if v1 = 1; hasnt started playing yet
    nop

    bne v0, zero, @@end
    nop

    ; NEED TO ADD PAUSE CHECK HERE
    ; THIS IS OLD CODE I HAD
    ;li s0, 0x0041B0AF
    ;lb s0, 0x0(s0)
    ; 0 = not paused
    ; 1 = paused
    ; skip to end if not zero
    ;bne s0, zero, @@end
    ;nop

@@post_frame_checks:
    ; not zero, end
    ; we count frames first
    lw v0, 0x14(s0)
    lw s1, 0x10(s0)
    ; until we reach 0x14(s0) frames, dont end this
    ; if equal, remove and end
    beq v0, s1, @@remove   
    addiu s1, s1, 0x1
    b @@end
    sw s1, 0x10(s0)


@@remove:
    ; if v0 == 0, then done and do the below
    sw zero, 0x0(s0)
    sw zero, 0x4(s0)
    sw zero, 0x8(s0)
    sw zero, 0xC(s0)
    sw zero, 0x10(s0)
    sw zero, 0x14(s0)
    ; need to also remove from soundqueue

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Process_Sound_Queue
    ;=================================
    ; Check if items from Sound Queue need to be assigned to TextA/B
    ; -- Is sound playing and does current frame == starting frame?
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)
    sw s4, 0x8(sp)
    sw s5, 0x4(sp)

    ;3. Loop through all dialog text objects assigned to this battle voice id:
    ;3a. If current frame = starting frame, set up string in A/B (whichever is empty)

    li s0, SoundQueue
    li s5, 0x5          ; number of times for outer loop to loop
@@start_outer_loop:
    lw a2, 0x0(s0)      ; TABLE_xxx pointer
    lw a2, 0x0(a2)
    move s3, a2         ; s3 keeping track of where were at in the table_xxx structure
    lw a1, 0x4(s0)      ; sound buffer

    ; if a1 is empty, go to next iteration
    beq a1, zero, @@end_inner_loop
    nop

    jal 0x03f92c8   ; battle only - need to look for equivalent in sound menu
                    ; or write my own!
    move a0, a1

    li s1, 0x1
    beq v1, s1, @@end_inner_loop       ; if v1 = 1; hasnt started playing yet
    nop

    ; if v0 == 0 ==> done and need to remove from table
    bne v0, zero, @@continue
    nop
    
    ; reached here - this sound is over so lets remove from SoundQueue!
    sw zero, 0x0(s0)
    b @@end_inner_loop
    sw zero, 0x4(s0)

@@continue:
    lh s1, 0x420(a1)    ; current frame

    ; 2 loops: 
    ; outer one is looping 5x through sound queue
    ; inner one loops through each line

    ; loop through items in table_xxx
    li s4, 0x1
    lbu s2, 0x3(a2)      ; number of times to loop
@@start_inner_loop:
    ;bne s2, s4, @@end_inner_loop    ; counter starts at 0 so this works for 0
                                    ; and also for total number of lines
    bgt s4, s2, @@end_inner_loop
    addiu s3, s3, 0x4               ; go to next item in table_xxx (pointer to line s4) 

    lw a0, 0x0(s3)  ; Pointer to Line Text Item
    lh v0, 0x0(a0)  ; Starting Frame
    ; need to check if S3 == s1
    ; if yes, print, if not, loop

    bne s1, v0, @@start_inner_loop
    addiu s4, s4, 0x1       ; increment counter

    ; a0 has Table_Line pointer
    ; a1 has SoundBuffer pointer
    ; a2 has Table strucutre (with the id)
    ; a3 has Current Frame

    ; equal, so we add text
    jal Add_Text_Line
    move a3, s1
    b @@start_inner_loop    ; go back to start of inner loop
                            ; we will check counter there instead
    nop

@@end_inner_loop:
    ; need to increment s0 by 8 and loop
    addiu s5, s5, -0x1      ; decrement outer loop counter
    bne s5, zero, @@start_outer_loop     ; once loop 5 times end
    addiu s0, s0, 0x8

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    lw s2, 0x10(sp)
    lw s3, 0xc(sp)
    lw s4, 0x8(sp)
    lw s5, 0x4(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Process_Display_Text_Sound_Test
    ;=================================
    ; Sound Test Version
    ; Run Every Frame
    ; Check if existing items in TextA/B need to be removed
    ; Check if item in Sound Queue needs to be removed
    ; Check if item from Sound Queue needs to be assigned to TextA/B
    ; Finally, print whats in TextA/B
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)
    move s0, a0     ; sound area thingy in s0
    li a0, TextA
    jal Check_Frame_Count_Ended_Sound_Text
    move a1, s0
    
    li a0, TextB
    jal Check_Frame_Count_Ended_Sound_Text
    move a1, s0

    li a0, TextA
    jal Check_Sound_Done_Playing_Sound_Test
    move a1, s0

    li a0, TextB
    jal Check_Sound_Done_Playing_Sound_Test
    move a1, s0

    jal Process_Sound_Queue_Sound_Test
    move a1, s0


    ;4. If Text A exists, print it
    ;5. If Text B exists, print it

    li a0, TextA
    li a1, TextParamA
    li a2, TextWidthA
    jal Print_Text
    li a3, 0x7c00

    li a0, TextB
    li a1, TextParamB
    li a2, TextWidthB
    jal Print_Text
    li a3, 0x7d00

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Check_Frame_Count_Ended_Sound_Text
    ;=================================
    ; Sound Test Version
    ; Check if sound frame counter has passed the end counter for the item
    ; This is used in multi-line sounds
    ; Single line sounds generally have an ending frame count of 0xFFFF
    ; and rely on the sound clip ending instead
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)

    ; a0 = text area
    ; 0x0(a0) = buffer area
    ; 0xC(a0) = last frame
    lw s0, 0x0(a0)
    beq s0, zero, @@end     ; if no buffer area, blank, do nothing, end
    lhu s1, 0xC(a0)

    ;li s0, 0xF53A90
    move s0, a1
    lw s0, 0x1190(s0)
    addiu s0, s0, -0x1
    ; s0 = frame counter, s1 = text max frame counter
    blt s0, s1, @@end       ; if frame counter < max frame, do nothing -- end
    nop
    ; else, we empty out a0
    sw zero, 0x0(a0)
    sw zero, 0x4(a0)
    sw zero, 0x8(a0)
    sw zero, 0xC(a0)
    sw zero, 0x10(a0)
    sw zero, 0x14(a0)

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc


.func Check_Sound_Done_Playing_Sound_Test
    ;=================================
    ; Sound Test Version
    ; Check if sound is done playing
    ; If it is still playing:
    ; -- Increment our own frame counter (check if not paused)
    ; -- If sound is done playing, start a new counter
    ;    for extra frames
    ; -- Once extra frames are up, we remove from TextA/B
    ;    and from the queue
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    move s0, a0

    ; a0 = text area
    ; 0x0(a0) = buffer area
    ; 0x8(a0) = last frame
    lw a0, 0x0(s0)
    beq a0, zero, @@end     ; if no buffer area, blank, do nothing, end
    nop
    
    ; if buffer area exists
    ; sound is playing - 0x1188 is not FFFFFFFF
    ; sound is done playing - 0x1188 is FFFFFFFF

    ;li v0, 0xF53A90
    move v0, a1
    lw v0, 0x1188(v0)   ; check if this is 0xFFFFFFFF
                        ; if yes, not playing anything
    
    li s1, 0xFFFFFFFF
    bne v0, s1, @@end   ; sound playing so end
    nop

    ;jal 0x0019a778
    ;nop

    ;li s1, 0x4
    ;bne v1, s1, @@end       ; if v1 != 4; hasnt started playing yet
    ;nop
    
    ; NEED TO ADD PAUSE CHECK HERE
    ; THIS IS OLD CODE I HAD
    ;li s0, 0x0041B0AF
    ;lb s0, 0x0(s0)
    ; 0 = not paused
    ; 1 = paused
    ; skip to end if not zero
    ;bne s0, zero, @@end
    ;nop

    ; not zero, end
    ; we count frames first
    lw v0, 0x14(s0)
    lw s1, 0x10(s0)
    ; until we reach 0x14(s0) frames, dont end this
    ; if equal, remove and end
    beq v0, s1, @@remove   
    addiu s1, s1, 0x1
    b @@end
    sw s1, 0x10(s0)

@@remove:
    ; if v0 == 0, then done and do the below
    sw zero, 0x0(s0)
    sw zero, 0x4(s0)
    sw zero, 0x8(s0)
    sw zero, 0xC(s0)
    sw zero, 0x10(s0)
    sw zero, 0x14(s0)
    ; need to also remove from soundqueue

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Process_Sound_Queue_Sound_Test
    ;=================================
    ; Sound Test Version
    ; Check if items from Sound Queue need to be assigned to TextA/B
    ; -- Is sound playing and does current frame == starting frame?
    ;=================================
	addiu sp, sp, -0x30
	sw ra, 0x2c(sp)
    sw s0, 0x28(sp)
    sw s1, 0x24(sp)
    sw s2, 0x20(sp)
    sw s3, 0x1c(sp)
    sw s4, 0x18(sp)
    sw s5, 0x14(sp)
    sw s6, 0x10(sp)

    move s6, a1

    ;3. Loop through all dialog text objects assigned to this battle voice id:
    ;3a. If current frame = starting frame, set up string in A/B (whichever is empty)

    li s0, SoundQueue
    li s5, 0x5          ; number of times for outer loop to loop
@@start_outer_loop:
    lw a2, 0x0(s0)      ; TABLE_xxx pointer
    lw a2, 0x0(a2)
    move s3, a2         ; s3 keeping track of where were at in the table_xxx structure
    lw a1, 0x4(s0)      ; sound buffer

    ; if a1 is empty, go to next iteration
    beq a1, zero, @@end_inner_loop
    nop

    jal 0x0019a778
    li a0, 0x0

    li s1, 0x2
    beq v1, s1, @@end_inner_loop       ; if v1 = 2; hasnt started playing yet
    nop

    ; if v0 == 0 ==> done and need to remove from table
    bne v0, zero, @@continue
    nop
    
    ; reached here - this sound is over so lets remove from SoundQueue!
    sw zero, 0x0(s0)
    b @@end_inner_loop
    sw zero, 0x4(s0)

@@continue:
    ;li s1, 0xF53A90
    lw s1, 0x1190(s6)    ; current frame
    addiu s1, s1, -0x1   ; decrement frame by 1 since its already 1 here - want to start at 0

    ; 2 loops: 
    ; outer one is looping 5x through sound queue
    ; inner one loops through each line

    ; loop through items in table_xxx
    li s4, 0x1
    lbu s2, 0x3(a2)      ; number of times to loop
@@start_inner_loop:
    ;bne s2, s4, @@end_inner_loop    ; counter starts at 0 so this works for 0
                                    ; and also for total number of lines
    bgt s4, s2, @@end_inner_loop
    addiu s3, s3, 0x4               ; go to next item in table_xxx (pointer to line s4) 

    lw a0, 0x0(s3)  ; Pointer to Line Text Item
    lh v0, 0x0(a0)  ; Starting Frame
    ; need to check if S3 == s1
    ; if yes, print, if not, loop

    bne s1, v0, @@start_inner_loop
    addiu s4, s4, 0x1       ; increment counter

    ; a0 has Table_Line pointer
    ; a1 has SoundBuffer pointer
    ; a2 has Table strucutre (with the id)

    ; equal, so we add text
    jal Add_Text_Line
    nop
    b @@start_inner_loop    ; go back to start of inner loop
                            ; we will check counter there instead
    nop

@@end_inner_loop:
    ; need to increment s0 by 8 and loop
    addiu s5, s5, -0x1      ; decrement outer loop counter
    bne s5, zero, @@start_outer_loop     ; once loop 5 times end
    addiu s0, s0, 0x8

@@end:
    lw ra, 0x2c(sp)
    lw s0, 0x28(sp)
    lw s1, 0x24(sp)
    lw s2, 0x20(sp)
    lw s3, 0x1c(sp)
    lw s4, 0x18(sp)
    lw s5, 0x14(sp)
    lw s6, 0x10(sp)
    jr ra
    addiu sp, sp, 0x30
.endfunc

;=================================
; Helper / Shared Functions
;=================================
.func Add_Text_Line
    ;=================================
    ; Adds Text to either Text A or Text B
    ; Whichever one is empty
    ; If both Text A and Text B are already
    ; being used, then the item isnt added
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)

    ; if we reach here we are ready to assign a line to TextA or TextB
    ; a0 has Table_Line pointer
    ; a1 has SoundBuffer pointer
    ; a2 has Table strucutre (with the id)
    ; a3 has Current Frame
    addiu s2, a0, 0x4   ; table line pointer

    ; first check if this is already in either Text A or Text B
@@CheckPlaying:
    li s0, TextA
    lw s1, 0x8(s0)
    beq s1, s2, @@end
    nop

    li s0, TextB
    lw s1, 0x8(s0)
    beq s1, s2, @@end
    nop

    ; check if TextA is empty
@@CheckA:
    li s0, TextA
    lw s1, 0x0(s0)      ; if 0, empty and we use
    bne s1, zero, @@CheckB  ; if not zero, occupied, check B instead
    nop
    b @@Populate_Text
    nop

@@CheckB:
    li s0, TextB
    lw s1, 0x0(s0)      ; if 0, empty and we use
    bne s1, zero, @@end  ; if not zero, all occupied... do nothing :(
    nop

@@Populate_Text:
    ; s0 has place we write to (A or B)
    sw a1, 0x0(s0)      ; sound buffer
    lh s1, 0x0(a2)      ; load battle voice id
    sw s1, 0x4(s0)      ; store battle voice id
    sw s2, 0x8(s0)      ; store string pointer
    lh s1, 0x2(a0)      ; load final frame
    sw s1, 0xC(s0)      ; write final frame
    lbu s1, 0x2(a2)      ; load num of extra frames
    sw s1, 0x14(s0)
    sw a3, 0x18(s0)     ; current frame overall

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    lw s2, 0x10(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Print_Text
    ;=================================
    ; Code to print text in TextA/TextB
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)
    sw s4, 0x8(sp)
    sw s5, 0x4(sp)

    ; first check if TextA is populated
    lw s0, 0x0(a0)  ; s0 --> first item in TextA/B
    ; if its zero go to end
    beq s0, zero, @@end

    ; A0 = TextA or TextB
    ; A1 = TextParamA or TextParamB
    ; A2 = TextWidthA or TextWidthB
    ; A3 ==> needs to be something about line y-pos
    move s0, a0
    move s1, a1
    move s2, a2
    move s3, a3

    ; write size
    li a0, 0x90
    sh a0, 0x1c(s1)
    sh a0, 0x1e(s1)

    ; write color
    li a0, 0x80808080
    sw a0, 0xC(s1)

    move a0, s1     ; text param
    move a2, s2     ; text param width thing
    lw a1, 0x8(s0)  ; string pointer
    jal Calc_Width
    move a3, s3

    ; write string -- A0 should be Text Param
    ; A1 should be string pointer
    move a0, s1     ; text param
    jal 0x010fc70
    lw a1, 0x8(s0)  ; string
    

@@increment:
    ;li a0, BattleStatus
    ;lw a2, 0x0(a0)  ; counter
    ;addiu a2, a2, 0x1
    ;sw a2, 0x0(a0)  ; counter
@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    lw s2, 0x10(sp)
    lw s3, 0xc(sp)
    lw s4, 0x8(sp)
    lw s5, 0x4(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Calc_Width
    ;=================================
    ; Function to calc width to use for centering
    ; shamelessly borrowed from somewhere in the
    ; battle routine
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)
    sw s2, 0x10(sp)
    sw s3, 0xc(sp)

    ; need to pass in A0 (textparam area)
    ; a1 is text
    ; a2 is the extra text param width info thing

    move s0, a0
    move s1, a1
    move s2, a2
    move s3, a3

    addiu a2, s2, 0xC
    jal 0x10fc90    ; sets up width for us to use
    move a3, sp   

    move a0, s0
    
    lbu a2, 0x13(s2)
    li v0, 0x80
    lhu v1, 0xc(s2)
    subu v0, v0, a2
    lh a1, 0xe(s2)
    srl v1, v1, 0x1
    sll v0, v0, 0x2
    addiu v1, v1, -0x6c00       ; pos -- x
    lh a2, 0x10(s2)
    addiu v0, v0, -0xc0
    subu a1, a1, v1
    addu a1, a1, v0
    addu a2, a2, s3      ;0x8100        ; pos -- y
    andi a1, a1, 0xffff
    jal 0x10eac0
    andi a2, a2, 0xffff

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    lw s2, 0x10(sp)
    lw s3, 0xc(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

.func Clear_Queue
    ;=================================
    ; Clear everything out
    ; TextA/B
    ; Sound Queue
    ;=================================
	addiu sp, sp, -0x20
	sw ra, 0x1c(sp)
    sw s0, 0x18(sp)
    sw s1, 0x14(sp)

    li s0, TextA
    sw zero, 0x0(s0)
    sw zero, 0x4(s0)
    sw zero, 0x8(s0)
    sw zero, 0xC(s0)
    sw zero, 0x10(s0)
    sw zero, 0x14(s0)
    sw zero, 0x18(s0)

    li s0, TextB
    sw zero, 0x0(s0)
    sw zero, 0x4(s0)
    sw zero, 0x8(s0)
    sw zero, 0xC(s0)
    sw zero, 0x10(s0)
    sw zero, 0x14(s0)
    sw zero, 0x18(s0)

    li s0, SoundQueue
    sw zero, 0x0(s0)
    sw zero, 0x4(s0)
    sw zero, 0x8(s0)
    sw zero, 0xC(s0)
    sw zero, 0x10(s0)
    sw zero, 0x14(s0)
    sw zero, 0x18(s0)
    sw zero, 0x1C(s0)
    sw zero, 0x20(s0)
    sw zero, 0x24(s0)

@@end:
    lw ra, 0x1c(sp)
    lw s0, 0x18(sp)
    lw s1, 0x14(sp)
    jr ra
    addiu sp, sp, 0x20
.endfunc

;=================================
; Store structures in ram
;=================================
TextA:
; Sound Buffer Area A
    .word 0x0
; Battle Voice ID A
    .word 0x0 
; String Pointer B
    .word 0x0
; LastFrame A
    .word 0x0
; Current Post Frame A
    .word 0x0
; Extra Frames A
    .word 0x0
; Current Frame Overall
    .word 0x0

TextB:
; Sound Buffer Area B
    .word 0x0
; Battle Voice ID B
    .word 0x0
; String Pointer B
    .word 0x0 
; LastFrame B
    .word 0x0
; Current Post Frame B
    .word 0x0
; Extra Frames B
    .word 0x0
; Current Frame Overall
    .word 0x0

TextParamA:
.byte 0xAF, 0xD2, 0x29, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x80, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x20, 0x7E, 0xC0, 0x79, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0xB6, 0xD2, 0x29, 0x00, 0x00, 0x01, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x08, 0x80, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x20, 0x7E, 0xC0, 0x79, 0x40, 0x02, 0x20, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x09, 0x70, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x81, 0x85, 0xC0, 0x79, 0x61, 0x07, 0x20, 0x01, 0x61, 0x07, 0x20, 0x01, 0x61, 0x07, 0x20, 0x01, 0x40, 0x02, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
TextParamB:
.byte 0xAF, 0xD2, 0x29, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x80, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x20, 0x7E, 0xC0, 0x79, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0xB6, 0xD2, 0x29, 0x00, 0x00, 0x01, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x08, 0x80, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x20, 0x7E, 0xC0, 0x79, 0x40, 0x02, 0x20, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x09, 0x70, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x07, 0x81, 0x85, 0xC0, 0x79, 0x61, 0x07, 0x20, 0x01, 0x61, 0x07, 0x20, 0x01, 0x61, 0x07, 0x20, 0x01, 0x40, 0x02, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
TextWidthA:
.byte 0x51, 0xD1, 0x29, 0x00, 0x00, 0x3E, 0x41, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x00, 0x14, 0xC0, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0xEA, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00
.word 0x0, 0x0, 0x0, 0x0
TextWidthB:
.byte 0x51, 0xD1, 0x29, 0x00, 0x00, 0x3E, 0x41, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x00, 0x14, 0xC0, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0xEA, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00
.word 0x0, 0x0, 0x0, 0x0
; need something to hold
; pointer to table plus sound buffer location
; hold a total of 5 for now..
SoundQueue:
.word 0x0 ; Pointer 1
.word 0x0 ; Sound Buffer 1
.word 0x0 ; Pointer 2
.word 0x0 ; Sound Buffer 2
.word 0x0 ; Pointer 3
.word 0x0 ; Sound Buffer 3
.word 0x0 ; Pointer 4
.word 0x0 ; Sound Buffer 5
.word 0x0 ; Pointer 5
.word 0x0 ; Sound Buffer 5

.include "Battle_Subs_Text.asm"
.align 4
; add new blast caliber text here
BLAST_CALIBER:
.asciiz "BLAST CALIBER"
.align 4
.asciiz "End of Battle Sub Code"
.align 4
.close
