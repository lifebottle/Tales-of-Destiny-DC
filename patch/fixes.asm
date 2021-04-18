.ps2
.open "00016_0000d.org", "00016_0000d.unknown", 0x003D4080
;copy_battle_icons equ 0x0057B6C0

;fix prologue
.org 0x00400EB4
    sw      ra,0x34(sp) ; changed from sw and moved to 0x34

;original calls to a custom string copy
;replaced to allow using the nice icons
;for Weak and Resist during battle
.org 0x00401078
    jal     copy_battle_icons

.org 0x004010F0
    jal     copy_battle_icons

;fix epilogue
.org 0x004012F0
    lw      ra,0x34(sp) ; changed from ld and moved to 0x34

.close

;00014.bin is an unused file describing the
;character mappings for the game, it goes unused
;but it's still loaded at all times, perfect for
;putting misc functions
.open "00014.org", "00014.bin", 0x0057B6C0
copy_battle_icons:
@@start:
    lb      v1,(a0)
    li      at,0xD
    beql    at,v1,@@start
    addiu   a0,0x5
    nop
    or      at,zero,zero

@@copy_loop:
    slti    v0,at,0x0005
    beqz    v0,@@function_end
    nop
    lb      v1,(a1)
    sb      v1,(a0)
    addiu   a1,0x1
    addiu   a0,0x1
    b       @@copy_loop
    addiu   at,0x1

@@function_end:
    or      at,zero,zero
    sb      at,(a0)
    jr      ra
    nop

.close