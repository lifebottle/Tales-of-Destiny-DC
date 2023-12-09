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

; Text Locations
VICTORY_QUOTE equ 0x1
IN_BATTLE_QUOTE equ 0x2
BLAST_CALIBER_QUOTE equ 0x3
BOSS_QUOTE equ 0x4

; Priority
PRIORITY_VERY_HIGH equ 0x1
PRIORITY_HIGH equ 0x2
PRIORITY_MEDIUM equ 0x3
PRIORITY_LOW equ 0x4
PRIORITY_VERY_LOW equ 0x5

; Table with all IDs and a "pointer"/label to the corresponding table
; Need to add ID here and label to the table
; If any line needs to have their sub disabled
; Just comment the line out in the table below
; by placing a ; in front of the line
; THIS TABLE MUST BE SORTED!!!!!
; THIS TABLE MUST BE SORTED!!!!!
; THIS TABLE MUST BE SORTED!!!!!
; THIS TABLE MUST BE SORTED!!!!!
; THIS TABLE MUST BE SORTED!!!!!

Battle_Sub_Initialized:
    .word 0x0
Battle_Table_Count:
    .word 0x0       ; prog calculates on init

BattleTable:
; Stahn BC
.word 0x0E, Table_00E
.word 0x1B, Table_01B
.word 0x1C, Table_01C
; Stahn In Battle Quotes
.word 0x1E, Table_01E
; Stahn Blast Caliber Init
.word 0x20, Table_020
; Stahn In Battle Quotes
.word 0x25, Table_025
.word 0x26, Table_026
.word 0x27, Table_027
.word 0x28, Table_028
.word 0x29, Table_029
; Stahn Single Victory Quotes
.word 0x2A, Table_02A
.word 0x2B, Table_02B
.word 0x2C, Table_02C
.word 0x2D, Table_02D
.word 0x2E, Table_02E
.word 0x2F, Table_02F
.word 0x30, Table_030
.word 0x31, Table_031

; Stahn Blast Caliber
.word 0x50, Table_050
.word 0x59, Table_059
.word 0x5b, Table_05B
.word 0x60, Table_060
.word 0x61, Table_061
.word 0x62, Table_062
.word 0x63, Table_063
.word 0x64, Table_064
.word 0x65, Table_065
.word 0x67, Table_067
.word 0x69, Table_069
.word 0x6A, Table_06A
.word 0x6B, Table_06B
.word 0x6C, Table_06C
.word 0x6E, Table_06E

; Rutee In Battle Quotes
.word 0x7F, Table_07F ; BC
.word 0x80, Table_080
.word 0x91, Table_091
.word 0x95, Table_095
.word 0x97, Table_097 ; BC intro
.word 0x9C, Table_09C
.word 0x9D, Table_09D
.word 0x9E, Table_09E
.word 0x9F, Table_09F
.word 0xA0, Table_0A0
; Rutee Single Victory Quotes
.word 0xA1, Table_0A1
.word 0xA2, Table_0A2
.word 0xA3, Table_0A3
.word 0xA4, Table_0A4
.word 0xA5, Table_0A5
.word 0xA6, Table_0A6
.word 0xA7, Table_0A7
.word 0xA8, Table_0A8
; Rutee Blast Caliber
.word 0xAD, Table_0AD
.word 0xC8, Table_0C8
.word 0xCE, Table_0CE
.word 0xD0, Table_0D0
.word 0xD8, Table_0D8
.word 0xD9, Table_0D9
.word 0xDA, Table_0DA
.word 0xDB, Table_0DB
.word 0xDC, Table_0DC
.word 0xDD, Table_0DD
.word 0xDE, Table_0DE
.word 0xDF, Table_0DF


; Philia In Battle Quotes
.word 0xEA, Table_0EA   ; BC
.word 0xF4, Table_0F4   ; BC
.word 0xFC, Table_0FC   ; BC
.word 0xFD, Table_0FD
.word 0xFE, Table_0FE   ; BC
.word 0xFF, Table_0FF   ; BC
.word 0x104, Table_104
.word 0x105, Table_105
.word 0x106, Table_106
.word 0x107, Table_107
.word 0x108, Table_108

; Philia Single Victory Quotes
.word 0x109, Table_109
.word 0x10A, Table_10A
.word 0x10B, Table_10B
.word 0x10C, Table_10C
.word 0x10D, Table_10D
.word 0x10E, Table_10E
.word 0x10F, Table_10F
.word 0x110, Table_110

; Philia Blast Caliber
.word 0x131, Table_131
.word 0x132, Table_132
.word 0x134, Table_134
.word 0x13A, Table_13A
.word 0x13E, Table_13E
.word 0x13F, Table_13F
.word 0x140, Table_140
.word 0x141, Table_141
.word 0x142, Table_142
.word 0x143, Table_143
.word 0x144, Table_144
.word 0x146, Table_146
.word 0x147, Table_147
.word 0x148, Table_148

; Woodrow In Battle Quotes
.word 0x150, Table_150
.word 0x152, Table_152
.word 0x153, Table_153
.word 0x161, Table_161
.word 0x164, Table_164
.word 0x166, Table_166
.word 0x16A, Table_16A
.word 0x16B, Table_16B
.word 0x16C, Table_16C
.word 0x16D, Table_16D
.word 0x16E, Table_16E
.word 0x16F, Table_16F

; Woodrow Single Victory Quotes
.word 0x170, Table_170
.word 0x171, Table_171
.word 0x172, Table_172
.word 0x173, Table_173
.word 0x174, Table_174
.word 0x175, Table_175
.word 0x176, Table_176
.word 0x177, Table_177

; Woodrow Blast Calibers
.word 0x192, Table_192
.word 0x193, Table_193
.word 0x195, Table_195
.word 0x196, Table_196
.word 0x198, Table_198
.word 0x19A, Table_19A

; Leon In Battle Quotes
.word 0x1A8, Table_1A8
.word 0x1A9, Table_1A9
.word 0x1B8, Table_1B8
.word 0x1BA, Table_1BA ; bc intro
.word 0x1BF, Table_1BF
.word 0x1C0, Table_1C0
.word 0x1C1, Table_1C1
.word 0x1C2, Table_1C2
.word 0x1C3, Table_1C3

; Leon Single Victory Quotes
.word 0x1C4, Table_1C4
.word 0x1C5, Table_1C5
.word 0x1C6, Table_1C6
.word 0x1C7, Table_1C7
.word 0x1C8, Table_1C8
.word 0x1C9, Table_1C9
.word 0x1CA, Table_1CA
.word 0x1CB, Table_1CB

; Leon Blast Caliber
.word 0x1EB, Table_1EB
.word 0x1ED, Table_1ED
.word 0x1EE, Table_1EE
.word 0x1EF, Table_1EF
.word 0x1F0, Table_1F0
.word 0x1F1, Table_1F1
.word 0x1F2, Table_1F2
.word 0x1F3, Table_1F3
.word 0x1F4, Table_1F4
.word 0x1F5, Table_1F5
.word 0x1F6, Table_1F6
.word 0x1F7, Table_1F7
.word 0x1F8, Table_1F8

; Mary In Battle Quotes
.word 0x1FC, Table_1FC
.word 0x202, Table_202
;.word 0x203, Table_203 ; no 203 for now
.word 0x207, Table_207  ; BC
.word 0x208, Table_208
.word 0x20F, Table_20F
.word 0x217, Table_217
.word 0x219, Table_219  ; BC
.word 0x21E, Table_21E
.word 0x21F, Table_21F
.word 0x220, Table_220
.word 0x221, Table_221
.word 0x222, Table_222

; Mary Single Victory Quotes
.word 0x223, Table_223
.word 0x224, Table_224
.word 0x225, Table_225
.word 0x226, Table_226
.word 0x227, Table_227
.word 0x228, Table_228
.word 0x229, Table_229
.word 0x22A, Table_22A

; Mary Blast Caliber
.word 0x237, Table_237
.word 0x23B, Table_23B
.word 0x23C, Table_23C

; Chelsea In Battle Quotes
.word 0x244, Table_244
.word 0x246, Table_246
.word 0x248, Table_248  ; BC
.word 0x24A, Table_24A
.word 0x24B, Table_24B  ; BC
.word 0x24E, Table_24E
.word 0x25D, Table_25D
.word 0x25F, Table_25F  ; BC
.word 0x264, Table_264
.word 0x265, Table_265
.word 0x266, Table_266
.word 0x267, Table_267
.word 0x268, Table_268

; Chelsea Single Quotes
.word 0x269, Table_269
.word 0x26A, Table_26A
.word 0x26B, Table_26B
.word 0x26C, Table_26C
.word 0x26D, Table_26D
.word 0x26E, Table_26E
.word 0x26F, Table_26F
.word 0x270, Table_270

; Chelsea Blast Caliber
.word 0x27E, Table_27E
.word 0x281, Table_281
.word 0x282, Table_282
.word 0x283, Table_283
.word 0x286, Table_286

; Johnny Blast Caliber
.word 0x28E, Table_28E
.word 0x291, Table_291
.word 0x292, Table_292
; Johnny In Battle Quotes
.word 0x2A2, Table_2A2 ; BC
.word 0x2A3, Table_2A3
.word 0x2A5, Table_2A5 ; BC
.word 0x2A9, Table_2A9
.word 0x2AA, Table_2AA
.word 0x2AB, Table_2AB
.word 0x2AC, Table_2AC
.word 0x2AD, Table_2AD
.word 0x2AE, Table_2AE

; Johnny Single Victory Quotes
.word 0x2AF, Table_2AF
.word 0x2B0, Table_2B0
.word 0x2B1, Table_2B1
.word 0x2B2, Table_2B2
.word 0x2B3, Table_2B3
.word 0x2B4, Table_2B4
.word 0x2B5, Table_2B5
.word 0x2B6, Table_2B6

; Johnny Blast Calibers
.word 0x2C1, Table_2C1
.word 0x2C2, Table_2C2
.word 0x2C3, Table_2C3
.word 0x2C4, Table_2C4
.word 0x2C5, Table_2C5
.word 0x2C7, Table_2C7

; Kongman Blast Caliber
.word 0x2D1, Table_2D1
.word 0x2D3, Table_2D3
.word 0x2D5, Table_2D5
.word 0x2D6, Table_2D6
.word 0x2D7, Table_2D7
.word 0x2D8, Table_2D8


; Kongman In Battle Quotes
.word 0x2E9, Table_2E9
.word 0x2EB, Table_2EB  ; BC
.word 0x2F0, Table_2F0
.word 0x2F1, Table_2F1
.word 0x2F2, Table_2F2
.word 0x2F3, Table_2F3
.word 0x2F4, Table_2F4

; Kongman Single Victory Quotes
.word 0x2F5, Table_2F5
.word 0x2F6, Table_2F6
.word 0x2F7, Table_2F7
.word 0x2F8, Table_2F8
.word 0x2F9, Table_2F9
.word 0x2FA, Table_2FA
.word 0x2FB, Table_2FB
.word 0x2FC, Table_2FC


; Kongman Blast Caliber
.word 0x30A, Table_30A
.word 0x311, Table_311
.word 0x312, Table_312
.word 0x317, Table_317
.word 0x31F, Table_31F
.word 0x320, Table_320
.word 0x321, Table_321

; Lilith In Battle Quotes
.word 0x32C, Table_32C
.word 0x32E, Table_32E
.word 0x338, Table_338
.word 0x33A, Table_33A
.word 0x33B, Table_33B
.word 0x33F, Table_33F
.word 0x340, Table_340
.word 0x342, Table_342  ; BC
.word 0x347, Table_347
.word 0x348, Table_348
.word 0x349, Table_349
.word 0x34A, Table_34A
.word 0x34B, Table_34B

; Lilith Single Quotes
.word 0x34C, Table_34C
.word 0x34D, Table_34D
.word 0x34E, Table_34E
.word 0x34F, Table_34F
.word 0x350, Table_350
.word 0x351, Table_351
.word 0x352, Table_352
.word 0x353, Table_353

; Lilith Blast Calibers
.word 0x355, Table_355
.word 0x35F, Table_35F
.word 0x361, Table_361
.word 0x362, Table_362
.word 0x363, Table_363

; Boss Quotes / Items in Sound Test?

; Dymlos
.word 0x36B, Table_36B
.word 0x36F, Table_36F
.word 0x370, Table_370
.word 0x371, Table_371
.word 0x39A, Table_39A
.word 0x39B, Table_39B

; Atwight
.word 0x3C0, Table_3C0
.word 0x3C3, Table_3C3
.word 0x3C4, Table_3C4
.word 0x3C6, Table_3C6
.word 0x3D0, Table_3D0
.word 0x3D2, Table_3D2
.word 0x3D3, Table_3D3

; Clemente
.word 0x3EB, Table_3EB
.word 0x3EC, Table_3EC
.word 0x3EF, Table_3EF
.word 0x3F3, Table_3F3
.word 0x3F4, Table_3F4
.word 0x3F7, Table_3F7
.word 0x3F8, Table_3F8
.word 0x3F9, Table_3F9
.word 0x3FA, Table_3FA
.word 0x3FB, Table_3FB
.word 0x3FC, Table_3FC
.word 0x3FD, Table_3FD
.word 0x401, Table_401

; Igtenos
.word 0x40C, Table_40C
.word 0x40D, Table_40D
.word 0x410, Table_410
.word 0x411, Table_411
.word 0x412, Table_412
.word 0x413, Table_413


; Chaltier
.word 0x41D, Table_41D
.word 0x41F, Table_41F
.word 0x420, Table_420
.word 0x421, Table_421
.word 0x422, Table_422
.word 0x423, Table_423
.word 0x424, Table_424

; Greybum
;.word 0x437, Table_437

; Batista
;.word 0x44f, Table_44f
.word 0x450, Table_450
.word 0x451, Table_451

; Tiberius
;.word 0x45e, Table_45e
.word 0x45f, Table_45f
.word 0x460, Table_460


; Dalis
.word 0x46f, Table_46f

; Baruk
;.word 0x47D, Table_47D
;.word 0x47E, Table_47E
.word 0x482, Table_482
.word 0x483, Table_483
.word 0x484, Table_484


; Irene
;.word 0x487, Table_487
;.word 0x489, Table_489
;.word 0x48D, Table_48D
.word 0x48E, Table_48E
.word 0x48F, Table_48F

; Remembrandt
;.word 0x49d, Table_49d
.word 0x49e, Table_49e
.word 0x49f, Table_49f

; Hugo
;.word 0x4a9, Table_4a9
.word 0x4aa, Table_4aa
.word 0x4ab, Table_4ab

; Miktran
;.word 0x4c2, Table_4c2
.word 0x4c3, Table_4c3
.word 0x4c4, Table_4c4

; Miktran Ex
.word 0x4D9, Table_4D9
.word 0x4DE, Table_4DE
.word 0x4E3, Table_4E3
.word 0x4E7, Table_4E7
.word 0x4E8, Table_4E8
.word 0x4EA, Table_4EA
;.word 0x4ED, Table_4ED
.word 0x4F0, Table_4F0
.word 0x4F3, Table_4F3
.word 0x4F4, Table_4F4
.word 0x4F7, Table_4F7
.word 0x4F8, Table_4F8
;.word 0x4FB, Table_4FB
.word 0x4FC, Table_4FC
.word 0x4FD, Table_4FD
.word 0x4FE, Table_4FE

; Soldiers
.word 0x508, Table_508
.word 0x511, Table_511
.word 0x512, Table_512

; Barbatos
.word 0x53F, Table_53F
.word 0x54B, Table_54B
.word 0x54C, Table_54C
.word 0x565, Table_565
.word 0x566, Table_566
.word 0x567, Table_567
.word 0x56B, Table_56B

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

; Boss Quotes
; Soldiers
.word 0x7b7, Table_7b7  ; Stahn
.word 0x7b8, Table_7b8  ; Rutee

; Leon 1
.word 0x8e3, Table_8e3

; Lens Hunters
.word 0x903, Table_903

; Basilisk
.word 0xC83, Table_c83
.word 0xC84, Table_c84

; Batista
.word 0xEAC, Table_eac

; Cave Queen
.word 0x101a, Table_101a
.word 0x101b, Table_101b

; Kraken
.word 0x1134, Table_1134
.word 0x1135, Table_1135

; Tiberius
.word 0x11A5, Table_11A5

; Dalis
.word 0x1395, Table_1395

; Greybum
.word 0x13F4, Table_13F4

; Leon 2
.word 0x1792, Table_1792
.word 0x1793, Table_1793

; Baruk
.word 0x1a10, Table_1a10

; Irene
.word 0x1a7f, Table_1a7f

; Remembrandt
.word 0x1b1c, Table_1b1c

; MIKTRAN
.word 0x2060, Table_2060

; MIKTRAN EX
.word 0x207D, Table_207D
.word 0x207E, Table_207E
.word 0x207F, Table_207F

; END OF TABLE
; KEEP 0000 0000 separator
.word 0x0, 0x0

; Label for Table, "Table_{id}"
Table_226:
    ; next 2 bytes are the # of extra frames, and then the # of lines to print
    ; if a sound is really short but you want the subs to hang out a little longer
    ; then add some frames here
    .halfword 0x20      ; 32 Extra Frames
    ; this is a single line so just 1 line
    .halfword 0x1       ; 1 line
    ; need a word (4 bytes) pointer to a sub-table for each line
    .word Line_226_1
; Sub Table for 1st line
Line_226_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
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
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5dc_1       ; pointer to each of the 4 sub tables in order
    .word Line_5dc_2
    .word Line_5dc_3
    .word Line_5dc_4
Line_5dc_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xA0          ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Yahoo! Victory is ours!"
    .align 4
Line_5dc_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x80          ; start
    .halfword 0x130         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Gwahahahaha!"
    .align 4
Line_5dc_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x120         ; start
    .halfword 0x176         ; end
    .asciiz COLOR_START,MARY,COLOR_END,": ",CHELSEA,"? What's wrong?"
    .align 4
Line_5dc_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x160         ; start  
    .halfword 0xFFFF        ; end
    ; string
    .asciiz COLOR_START,CHELSEA,COLOR_END,": I wanted to be on ",WOODROW,"'s team..."
    .align 4

; Stahn Blast Caliber
Table_020:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_020_1
Line_020_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Haaaaaaah!"
    .align 4

Table_061:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_061_1
Line_061_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Sword of eternal flame... Unleash your power!"
    .align 4

Table_062:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_062_1
Line_062_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    ;.halfword 0x120    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Scorch my enemies down to their very souls!"
    .align 4

Table_063:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_063_1
Line_063_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Unleash!"
    .align 4

Table_064:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_064_1
    .word Line_064_2
Line_064_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0x50      ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Burning strike!"
    .align 4
Line_064_2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x30       ; start  
    .halfword 0xFFFF     ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Blazing Apocalypse!"
    .align 4

Table_059:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_059_1
Line_059_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I'm not going down without a fight!"
    .align 4

Table_05B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_05B_1
Line_05B_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Regal Phoenix!"
    .align 4

Table_065:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_065_1
Line_065_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Burning Phoenix!"
    .align 4

Table_06A:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_06A
Line_06A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": It's over, ",MIKTRAN,"!"
    .align 4

Table_06B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_06B
Line_06B:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": With this sword, I'll carve a path to the future!"
    .align 4

Table_06C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x3           ; 1 line
    .word Line_06C_1
    .word Line_06C_2
    .word Line_06C_3
Line_06C_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0x48    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Now!"
    .align 4
Line_06C_2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x30       ; start  
    .halfword 0x70    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Pierce!"
    .align 4
Line_06C_3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x58       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Heavenward Thrust!"
    .align 4

Table_050:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_050_1
Line_050_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": BURN!"
    .align 4

Table_060:
    .halfword 0x50          ; no Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_060_1
Line_060_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF      ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Final Fury!"
    .align 4

Table_01B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_01B
Line_01B:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I've got this!"
    .align 4

Table_36B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_36B
Line_36B:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": Now! Let's go!"
    .align 4

Table_01C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_01C
Line_01C:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Who's next!?"
    .align 4
    
Table_067:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_067_1
    .word Line_067_2
Line_067_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0x50    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Let me show you..."
    .align 4
Line_067_2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x40       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": ...my devastating power!"
    .align 4

Table_00E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_00E
Line_00E:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": This is your end!"
    .align 4

Table_069:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_069
Line_069:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Burn to ashes!"
    .align 4


; Stahn In Battle Quotes
Table_025:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_025_1
Line_025_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": The enemy!"
    .align 4

Table_026:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_026_1
Line_026_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Let's go!"
    .align 4

Table_027:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_027_1
Line_027_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Let's go, everyone!"
    .align 4

Table_028:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_028_1
Line_028_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Behind us!"
    .align 4

Table_029:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_029_1
Line_029_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": This is bad!"
    .align 4

Table_01E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_01E_1
Line_01E_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Let's get outta here!"
    .align 4

; Rutee in battle quotes

Table_09c:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_09c_1
Line_09c_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Let's get this over with!"
    .align 4

Table_09d:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_09d_1
Line_09d_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I'll be taking that!"
    .align 4
    
Table_09f:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_09f_1
Line_09f_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": They're behind us!?"
    .align 4
    
Table_0a0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0a0_1
Line_0a0_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": They're on...both sides?"
    .align 4
    
Table_09e:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_09e_1
Line_09e_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": This is going to be fun!"
    .align 4
    
Table_095:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_095_1
Line_095_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": You'll pay for this!"
    .align 4

; Rutee Blast Calibers
Table_097:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_097
Line_097:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Time to get serious!"
    .align 4

Table_0DF:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0DF_1
Line_0DF_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Gonna show off a little!"
    .align 4

Table_07F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_07F_1
Line_07F_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": You're not getting away!"
    .align 4

Table_0AD:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0AD
Line_0AD:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I'll be takin' this!"
    .align 4

Table_0D8:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0D8
Line_0D8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Guide us to the healing embrace...."
    .align 4

Table_0D9:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0D9_1
Line_0D9_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": From the eternal sea!"
    .align 4

Table_0DA:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0DA_1
Line_0DA_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Life Discharge!"
    .align 4

Table_0DB:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0DB_1
Line_0DB_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Adrift in the icy mist!"
    .align 4
    
Table_0DC:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0DC_1
Line_0DC_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Trapped in a frozen river!"
    .align 4
    
Table_0DD:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0DD_1
Line_0DD_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Instantly sink into its cold embrace!"
    .align 4

Table_0DE:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0DE_1
Line_0DE_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Embrace End!"
    .align 4

; Raining Orion
Table_3C6:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3C6
Line_3C6:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": We need a miracle..."
    .align 4

; Repeat 0xDF

Table_3C3:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3C3
Line_3C3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": Engulf them!"
    .align 4

; Surviving Hollin
; Repeat 0x7F

Table_3D0:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3D0
Line_3D0:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": Make them pay!"
    .align 4

Table_091:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_091
Line_091:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I got this!"
    .align 4
    
Table_0C8:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0C8
Line_0C8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Pierce!"
    .align 4

Table_080:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_080
Line_080:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Take this!"
    .align 4

; Celestial Earth

Table_0D0:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0D0
Line_0D0:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": All returns to nothing!"
    .align 4

Table_3C4:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3C4
Line_3C4:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": I shall lend you my power."
    .align 4

Table_0CE:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0CE
Line_0CE:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Miracle of Life!"
    .align 4

Table_3C0:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3C0
Line_3C0:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": Pierce!"
    .align 4


; Philia In Battle Quotes

Table_105:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_105_1
Line_105_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Let's do our best, everyone."
    .align 4

Table_104:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_104_1
Line_104_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": A threat..."
    .align 4

Table_107:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_107_1
Line_107_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Enemy attack!"
    .align 4

Table_108:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_108_1
Line_108_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": They're coming from both sides!"
    .align 4

Table_106:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_106_1
Line_106_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Atamoni..."
    .align 4

Table_0fd:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0fd_1
Line_0fd_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": We must escape, quickly!"
    .align 4

; Philia Blast Caliber
Table_0FF:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0FF
Line_0FF:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Unforgivable!"
    .align 4

Table_13E:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_13E
Line_13E:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Divine judgement for an evil soul!"
    .align 4

Table_13F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_13F
Line_13F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Sacred Blame!"
    .align 4

Table_140:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_140
Line_140:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Here I go, with all I've got!"
    .align 4

Table_141:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_141
Line_141:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Howl, O cleansing fire!"
    .align 4

Table_142:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_142
Line_142:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Dance, O humbling ice!"
    .align 4

Table_143:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_143
Line_143:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Lash, O punishing wind!"
    .align 4

Table_144:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_144
Line_144:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Repent now! Divine Power!"
    .align 4

Table_146:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_146
Line_146:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Come forth, O bolt of life!"
    .align 4

Table_147:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_147
Line_147:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Roar in fury, O earth of creation!"
    .align 4

Table_148:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_148
Line_148:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Rebirth Crusader!"
    .align 4

; Raining Orion
Table_0EA:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_EA
Line_EA:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Divinite Punishment!"
    .align 4

Table_3F4:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_3F4_1
    .word Line_3F4_2
Line_3F4_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0x68    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": The will of Atamoni!"
    .align 4
Line_3F4_2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x55       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Now behold her judgement!"
    .align 4

; Surviving Hollin
Table_0F4:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_F4
Line_F4:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": What should I do...?"
    .align 4

Table_401:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_401
Line_401:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Defeat your enemies!"
    .align 4

Table_13A:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_13A
Line_13A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Lend me strength, ",CLEMENTE,"!"
    .align 4

Table_3F3:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3F3
Line_3F3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Unleash her will!"
    .align 4

Table_0FC:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_FC
Line_FC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Repent!"
    .align 4

; Celestial Earth
Table_3EB:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3EB
Line_3EB:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": O rumbling earth!"
    .align 4

Table_132:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_132
Line_132:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": O torrent of water!"
    .align 4

Table_3EC:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3EC
Line_3EC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": O lashing winds!"
    .align 4

Table_131:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_131
Line_131:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": O raging pyre!"
    .align 4

Table_3EF:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_3EF
Line_3EF:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": O piercing ice!"
    .align 4

Table_134:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_134
Line_134:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": O blinding light!"
    .align 4

Table_0FE:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0FE
Line_0FE:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Atamoni's might...!"
    .align 4

; Leon In Battle Quotes
Table_1C0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C0_1
Line_1C0_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Shall we begin?"
    .align 4

Table_1BF:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1BF_1
Line_1BF_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Now, let's move!"
    .align 4

Table_1C2:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C2_1
Line_1C2_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Oh, is that their plan?"
    .align 4

Table_1C3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C3_1
Line_1C3_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Looks like we're trapped."
    .align 4

Table_1C1:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_1C1_BQ
    .word Line_1C1_BC
Line_1C1_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Don't hold back!"
    .align 4
Line_1C1_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Time to get serious!"
    .align 4


Table_1B8:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1B8_1
Line_1B8_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Let's regroup."
    .align 4

; Leon Blast Caliber

Table_1BA:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1BA_1
Line_1BA_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Know your place!"
    .align 4

Table_1ED:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1ED_1
Line_1ED_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Time to be rid of this filth!"
    .align 4

Table_1EE:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1EE
Line_1EE:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Begone!"
    .align 4

Table_1EF:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1EF
Line_1EF:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Cleansing Inferno!"
    .align 4

Table_1F0:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F0
Line_1F0:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Be consumed by the flames of darkness!"
    .align 4


Table_1F1:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F1
Line_1F1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": You eyesore!"
    .align 4

Table_1F2:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F2
Line_1F2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Begone..."
    .align 4

Table_1F3:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x3           ; 3 lines
    .word Line_1F3_D7
    .word Line_1F3_E5
    .word Line_1F3_E6
Line_1F3_D7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xD7           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": ...from my sight!!"
    .align 4
Line_1F3_E5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE5           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Disappear!"
    .align 4
Line_1F3_E6:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE6           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Disappear!"
    .align 4


Table_1F4:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F4
Line_1F4:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Infernal Suffering!"
    .align 4

Table_1F5:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F5
Line_1F5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": You understand nothing!"
    .align 4

Table_1EB:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1EB
Line_1EB:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Have you made your peace?"
    .align 4

Table_1F8:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F8
Line_1F8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Infernal Demon Fang!"
    .align 4

Table_1F6:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F6
Line_1F6:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I'll cut myself free from my past!"
    .align 4

; Raining Orion
Table_1A8:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1A8
Line_1A8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I'll end this in one strike!"
    .align 4

Table_41D:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_41D
Line_41D:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Crush them!"
    .align 4

; 1f3
; Surviving Hollin
Table_1A9:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1A9
Line_1A9:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Shall we get serious?"
    .align 4
    
Table_420:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_420
Line_420:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Hope you're ready for this!"
    .align 4

; 1c7
; 1f3

; Celestial Earth
; 1c1
Table_41F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_41F
Line_41F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Begone from our sight!"
    .align 4

; 1f6
Table_1F7:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1F7
Line_1F7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Remember this moment forever!"
    .align 4

; Woodrow In Battle Quotes
Table_16C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_16C_1
Line_16C_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": They've come."
    .align 4
    
Table_16B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_16B_1
Line_16B_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Looks hostile."
    .align 4
    
Table_16E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_16E_1
Line_16E_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Surprise attack, watch out!"
    .align 4
    
Table_16F:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_16F_1
Line_16F_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Pincer attack! Take your positions!"
    .align 4
    
Table_16D:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_16D_1
Line_16D_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": We must be on our guard!"
    .align 4
    
Table_164:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_164_1
Line_164_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Retreat!"
    .align 4
    
; Woodrow Blast Calibers
Table_153:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_153
Line_153:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Release!"
    .align 4

Table_166:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_166
Line_166:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Allow me to show you!"
    .align 4

Table_192:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_192
Line_192:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I'm not finished with you!"
    .align 4

Table_193:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_193
Line_193:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Tearing thrust! Azure Wave!"
    .align 4

Table_195:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_195
Line_195:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Eternal gale, lend me your power!"
    .align 4

Table_196:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 1 line
    .word Line_196_1
    .word Line_196_2
Line_196_1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0x50    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Dancing tempest!"
    .align 4
Line_196_2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x37       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Radiant Vortex!"
    .align 4

Table_198:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_198
Line_198:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I'm holding nothing back!"
    .align 4

Table_19A:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_19A
Line_19A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": It's up to you now..."
    .align 4

; Raining Orion
Table_161:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_161
Line_161:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Entrust this to me!"
    .align 4

Table_40C:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_40C
Line_40C:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": Let's finish this!"
    .align 4

; 153
; Surviving Hollin

Table_150:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_150
Line_150:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": You're mine!"
    .align 4

Table_40D:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_40D
Line_40D:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": A swift strike!"
    .align 4
; 171
; 172

; Celestial Earth
Table_16A:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_16A
Line_16A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I will not yield!"
    .align 4
; 177

Table_152:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_152
Line_152:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Have at you!"
    .align 4

; Mary In Battle Quotes
Table_21F:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_21F_1
Line_21F_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": They don't look like much trouble."
    .align 4

Table_21E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_21E_1
Line_21E_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Well, let's get a move on."
    .align 4

Table_221:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_221_1
Line_221_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Here they come!"
    .align 4

Table_222:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_222_1
Line_222_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": We're surrounded!"
    .align 4

Table_220:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 line
    .word Line_220_BQ
    .word Line_220_BC
Line_220_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Time to go all out!"
    .align 4
Line_220_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Let me show you what I got!"
    .align 4

Table_217:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_217_1
Line_217_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Let's bail!"
    .align 4

; Mary Blast Caliber
Table_219:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_219
Line_219:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": So persistent!"
    .align 4

Table_207:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_207
Line_207:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": I'm taking you down!"
    .align 4
    
Table_237:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_237
Line_237:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Gaia's Fury!"
    .align 4
    
Table_23B:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_23B
Line_23B:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": I'm not holding back anymore!"
    .align 4
    
Table_23C:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_23C
Line_23C:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Be gone!"
    .align 4

; Raining Orion
Table_202:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_202
Line_202:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Come on!"
    .align 4
    
Table_1FC:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1FC
Line_1FC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Take this!"
    .align 4
    
Table_208:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_208_E5
    .word Line_208_E7
Line_208_E5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE5           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": And that!"
    .align 4
Line_208_E7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE7           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Weakling!"
    .align 4

; Mary Surviving Hollin
Table_20F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_20F
Line_20F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE6          ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": You're nothing to me!"
    .align 4
; 207
; 203 - Oriaa! skip
; 223

; Mary Celestial Earth
; 220
; 227
; 208
; Kongman In Battle Quotes

Table_2F0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F0_1
Line_2F0_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I'mma knock you out!"
    .align 4

Table_2F1:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F1_1
Line_2F1_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Who wants a piece of this?"
    .align 4

Table_2F3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F3_1
Line_2F3_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Fight fair and square!"
    .align 4

Table_2F4:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F4_1
Line_2F4_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I'll take you on from any direction!"
    .align 4

Table_2F2:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_2F2_BQ
    .word Line_2F2_BC
Line_2F2_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": NEVER underestimate a CHAMPION!"
    .align 4
Line_2F2_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": NEVER underestimate a CHAMPION!"
    .align 4

Table_2E9:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2E9_1
Line_2E9_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Let's get outta here!"
    .align 4
    
    
; Kongman Blast Caliber
Table_2EB:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2EB
Line_2EB:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Now!"
    .align 4

Table_2D1:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2D1
Line_2D1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Hiyah!"
    .align 4
    
Table_2D3:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2D3
Line_2D3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Fighting Spirit!"
    .align 4
    
Table_2D6:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_2D6_DC
    .word Line_2D6_E7
Line_2D6_DC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xDC           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": One more!"
    .align 4
Line_2D6_E7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE7           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": My final blow!"
    .align 4

Table_2D8:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2D8
Line_2D8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Uyah!"
    .align 4

Table_30A:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_30A
Line_30A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Tres Bien Hip!"
    .align 4

Table_311:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_311
Line_311:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": My muscles throb!"
    .align 4

Table_312:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_312
Line_312:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": This ends now!"
    .align 4

; Kongman Raining Orion
; 2D8
Table_2D5:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2D5
Line_2D5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Come get some!"
    .align 4
; 312

; Kongman Surviving Hollin
Table_2D7:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2D7
Line_2D7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": MY MUSCLES UNLEASHED!"
    .align 4
; 30F - not subbed
; 2F2

Table_317:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_317
Line_317:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Get outta here!"
    .align 4
; 306 - not subbed

; Kongman Celestial Earth
Table_31F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_31F
Line_31F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": You're still standing?"
    .align 4
    
Table_320:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_320
Line_320:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": So it's come to this..."
    .align 4
; 2D6
Table_321:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_321
Line_321:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Get a load of this!"
    .align 4

; Johnny In Battle Quotes
Table_2AA:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2AA_1
Line_2AA_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Let's get it on!"
    .align 4

Table_2AB:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2AB_1
Line_2AB_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Shall we dance?"
    .align 4

Table_2AD:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2AD_1
Line_2AD_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Hooligans have arrived!"
    .align 4

Table_2AE:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2AE_1
Line_2AE_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": What do we do?"
    .align 4

Table_2AC:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_2AC_BQ
    .word Line_2AC_BC
Line_2AC_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Come on! I'm coming for you!"
    .align 4
Line_2AC_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": COME ON! Let's seriously party!"
    .align 4

Table_2A3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2A3_1
Line_2A3_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Run for your life!"
    .align 4

; Johnny Blast Caliber
Table_292:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_292_E3
    .word Line_292_E6
Line_292_E3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE3           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Now it's getting heated!"
    .align 4
Line_292_E6:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE6           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": It's getting exciting, baby!"
    .align 4

    
Table_2A2:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2A2
Line_2A2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Yes!"
    .align 4
    
Table_2A5:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2A5
Line_2A5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Are you ready?"
    .align 4
    
Table_2C4:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2C4
Line_2C4:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": What's the matter with you!?"
    .align 4
    
Table_2C5:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2C5
Line_2C5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": You don't want to party?"
    .align 4
    
Table_2C7:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2C7
Line_2C7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Fine, get the hell out!"
    .align 4
    
; Johnny Raining Orion
Table_28E:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_28E
Line_28E:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Leave this to me!"
    .align 4

Table_2C1:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2C1
Line_2C1:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Behold the glory of my voice!"
    .align 4

; Johnny Surviving Hollin
Table_291:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_291
Line_291:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": All okay!"
    .align 4
; 292
Table_2C2:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2C2
Line_2C2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Listen to my glorious song!"
    .align 4
; 2b1

; Johnny Celestial Earth
; 2ac
Table_2A9:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2A9
Line_2A9:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": COME-BACK TOUR!"
    .align 4

Table_2C3:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2C3
Line_2C3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": That was a blast!"
    .align 4

; Chelsea In Battle Quotes
Table_264:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_264_1
Line_264_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": I'll do my best!"
    .align 4

Table_265:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_265_1
Line_265_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": I'll bring up the rear."
    .align 4

Table_267:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_267_1
Line_267_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": What? When did they..."
    .align 4

Table_268:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_268_1
Line_268_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": We're completely surrounded!"
    .align 4

Table_266:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_266_1
Line_266_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": We won't lose to the likes of you!"
    .align 4

Table_25d:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_25d_1
Line_25d_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": That was close..."
    .align 4

; Chelsea Blast Calibers
Table_248:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 2 line
    .word Line_248_E2
    .word Line_248_E5
Line_248_E2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE2           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": How about this!"
    .align 4
Line_248_E5:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE5           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Try this on for size!"
    .align 4

Table_24B:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x2           ; 2 line
    .word Line_24B_D8
    .word Line_24B_E7
Line_24B_D8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xD8           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Awesomeness incoming!"
    .align 4
Line_24B_E7:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0xE7          ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Here comes the big one!"
    .align 4

Table_25F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_25F
Line_25F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Leave it to me!"
    .align 4

Table_27E:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_27E
Line_27E:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Icy Petal!"
    .align 4

Table_282:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_282
Line_282:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Eyah!"
    .align 4

Table_283:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_283
Line_283:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Wild Geese!"
    .align 4

; Chelsea Raining Orion
Table_24A:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_24A
Line_24A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": That's it!"
    .align 4
; 248
Table_286:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_286
Line_286:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Wave attack!"
    .align 4

; Chelsea Surviving Hollin
Table_244:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_244
Line_244:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Here you go!"
    .align 4

Table_246:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_246
Line_246:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Let's do this!"
    .align 4
; 282
Table_24E:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_24E
Line_24E:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Rain down from above!"
    .align 4

; Chelsea Celestial Earth
Table_281:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_281
Line_281:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Unbound wings, soar to the heavens!"
    .align 4


; Lilith In Battle Quotes
Table_347:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_347_1
Line_347_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Let's do it!"
    .align 4

Table_348:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_348_1
Line_348_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Shall we?"
    .align 4

Table_34A:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_34A_1
Line_34A_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": They seem to be behind us."
    .align 4

Table_34B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_34B_1
Line_34B_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": We're stuck."
    .align 4

Table_349:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_349_1
Line_349_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Are you really that tough?"
    .align 4

Table_340:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_340_1
Line_340_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Retreat. Retreat!"
    .align 4

; Lilith Blast Calibers
Table_342:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_342
Line_342:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": That's enough!"
    .align 4

Table_361:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_361
Line_361:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Now witness my super secret technique!"
    .align 4

Table_362:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_362
Line_362:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Thunder Sword!"
    .align 4

Table_363:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_363
Line_363:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Just kidding!"
    .align 4

; Lilith Raining Orion
Table_33A:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_33A
Line_33A:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": You gotta be kidding me!"
    .align 4

Table_33B:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_33B
Line_33B:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": What am I to do with you!?"
    .align 4

Table_32C:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_32C
Line_32C:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Get outta my way!"
    .align 4

; Lilith Surviving Hollin
Table_338:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_338
Line_338:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": So sorry..."
    .align 4
; 363
Table_35F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_35F
Line_35F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Take this!"
    .align 4

Table_33F:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_33F
Line_33F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Catch you later!"
    .align 4

; Lilith Celestial Earth
; 33A

Table_355:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_355
Line_355:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Away with you!"
    .align 4

Table_32E:
    .halfword 0x20          ; 20 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_32E
Line_32E:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": DING!"
    .align 4


; Victory Quotes
; Stahn Single Victory Quotes
Table_02A:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_02A_1
Line_02A_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Hooray!"
    .align 4

Table_02B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_02B_1
Line_02B_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Yahoo!"
    .align 4

Table_02C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_02C_1
Line_02C_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Alright, we won!"
    .align 4

Table_02D:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_02D_1
Line_02D_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": We are unstoppable!"
    .align 4

Table_02E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_02E_1
Line_02E_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That was a piece of cake."
    .align 4

Table_02F:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_02F_1
Line_02F_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That was unexpected."
    .align 4

Table_030:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_030_1
Line_030_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": They were pretty tough."
    .align 4

Table_031:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_031_1
Line_031_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That got me really fired up!"
    .align 4

; Rutee Single Victory Quotes

Table_0A1:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A1_1
Line_0A1_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Okay!"
    .align 4

Table_0A2:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A2_1
Line_0A2_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": We did it!"
    .align 4

Table_0A3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A3_1
Line_0A3_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": That was perfect!"
    .align 4

Table_0A4:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A4_1
Line_0A4_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Geez, what a waste of my time!"
    .align 4

Table_0A5:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A5_1
Line_0A5_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": This pushover wasn't even worth the lens."
    .align 4

Table_0A6:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A6_1
Line_0A6_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Quit messing around!"
    .align 4

Table_0A7:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_0A7_1
Line_0A7_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Totally unprofitable."
    .align 4

Table_0A8:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 line
    .word Line_0A8_1
    .word Line_0A8_2
Line_0A8_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": The more you borrow, the more you pay back!"
    .align 4
Line_0A8_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz "I don't make the rules!"
    .align 4

; Philia Single Victory Quotes

Table_109:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_109_1
Line_109_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Phew, we did it..."
    .align 4

Table_10a:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_10a_1
Line_10a_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Did that hurt? My apologies."
    .align 4

Table_10B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_10B_1
Line_10B_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Atamoni has protected us!"
    .align 4

Table_10C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_10C_1
Line_10C_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": I'm doing the best I can!"
    .align 4

Table_10D:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_10D_1
Line_10D_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Was I of use?"
    .align 4

Table_10E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_10E_1
Line_10E_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": This, too, is part of my training."
    .align 4

Table_10F:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_10F_1
Line_10F_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Oh Atamoni, were you testing us?"
    .align 4

Table_110:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_110_1
Line_110_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Reflect on your sins, and find salvation!"
    .align 4

; Leon Single Victory Quotes

Table_1C4:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C4_1
Line_1C4_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": The outcome will always be the same, no matter what!"
    .align 4

Table_1C5:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C5_1
Line_1C5_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": They were stupid to face me."
    .align 4

Table_1C6:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C6_1
Line_1C6_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Not even worth words."
    .align 4

Table_1C7:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_1C7_VQ
    .word Line_1C7_BC
Line_1C7_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I doubt we'll run into the likes of you ever again."
    .align 4
Line_1C7_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": We'll never see your face again!"
    .align 4


Table_1C8:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C8_1
Line_1C8_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Small fry should stick to the pond."
    .align 4

Table_1C9:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1C9_1
Line_1C9_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": What a waste of time..."
    .align 4

Table_1Ca:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1Ca_1
Line_1Ca_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I wasn't prepared for that... I'm getting sloppy."
    .align 4

Table_1Cb:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_1Cb_1
Line_1Cb_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Did you really think you'd win!?"
    .align 4

; Woodrow Single Victory Quotes

Table_170:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_170_1
Line_170_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": A futile effort..."
    .align 4

Table_171:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_171_VQ
    .word Line_171_BC
Line_171_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": You were unlucky."
    .align 4
Line_171_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": How unfortunate."
    .align 4

Table_172:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_172_VQ
    .word Line_172_BC
Line_172_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I'll show no mercy to those who stand in my way!"
    .align 4
Line_172_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Impediments deserve no mercy!"
    .align 4

Table_173:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_173_1
Line_173_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Great. Let's keep this up."
    .align 4

Table_174:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_174_1
Line_174_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Be more careful of who you attack next time."
    .align 4

Table_175:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_175_1
Line_175_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": That battle felt more like a war..."
    .align 4

Table_176:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_176_1
Line_176_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": What a fierce opponent... We need to be more careful."
    .align 4

Table_177:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_177_VQ
    .word Line_177_BC
Line_177_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": There's a reason why I won't lose!"
    .align 4
Line_177_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Others depend on my success."
    .align 4

; Mary Single Victory Quotes

Table_223:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_223_VQ
    .word Line_223_BC
Line_223_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Hahaha!"
    .align 4
Line_223_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Hahaha!"
    .align 4

Table_224:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_224_1
Line_224_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": That was pretty fun!"
    .align 4

Table_225:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_225_1
Line_225_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Huh? Over already?"
    .align 4

Table_227:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_227_VQ
    .word Line_227_BC
Line_227_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": They sure acted tough, huh?"
    .align 4
Line_227_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Nothing can save you now."
    .align 4

Table_228:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_228_1
Line_228_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": That dragged on way too long..."
    .align 4

Table_229:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_229_1
Line_229_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": That was a close one..."
    .align 4

Table_22A:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_22A_1
Line_22A_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Excessive? No. I put it out of its misery."
    .align 4

; Kongman Single Victory Quotes

Table_2F5:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F5_1
Line_2F5_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I AM THE CHAMPION!!!"
    .align 4

Table_2F6:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F6_1
Line_2F6_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": No problem!"
    .align 4

Table_2F7:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F7_1
Line_2F7_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Now! Swear on my bicep that you'll never do evil again!"
    .align 4

Table_2F8:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F8_1
Line_2F8_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Behold, my glorious MUSCLES!!!"
    .align 4

Table_2F9:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2F9_1
Line_2F9_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": A Round One K.O.! That's how it's done!"
    .align 4

Table_2FA:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2FA_1
Line_2FA_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": That sure went the distance..."
    .align 4

Table_2FB:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2FB_1
Line_2FB_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Whew, they even did a number on me. Not bad!"
    .align 4

Table_2FC:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2FC_1
Line_2FC_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": This is my MUSCLE CIRCUS!"
    .align 4


; Johnny Single Victory Quotes

Table_2AF:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2AF_1
Line_2AF_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Have you fallen for me yet?"
    .align 4

Table_2B0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2B0_1
Line_2B0_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Be mesmerized!"
    .align 4

Table_2B1:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_2B1_VQ
    .word Line_2B1_BC
Line_2B1_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Were they supposed to be tough?"
    .align 4
Line_2B1_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Perhaps it was too much for you..."
    .align 4

Table_2B2:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2B2_1
Line_2B2_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Is it time to return already?"
    .align 4

Table_2B3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2B3_1
Line_2B3_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Tsk tsk, quite lacking."
    .align 4

Table_2B4:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2B4_1
Line_2B4_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": I'm sorry, I don't do encores."
    .align 4

Table_2B5:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2B5_1
Line_2B5_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Maybe things got a little too heated..."
    .align 4

Table_2B6:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_2B6_1
Line_2B6_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Were you not pleased? Will we meet again?"
    .align 4


; Chelsea Single Quotes

Table_269:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_269_1
Line_269_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": All criminals accounted for."
    .align 4

Table_26A:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_26A_1
Line_26A_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Karmatic justice!"
    .align 4

Table_26B:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_26B_1
Line_26B_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Love plus friendship equals victory!"
    .align 4

Table_26C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_26C_1
Line_26C_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Such dummies, thinking that they could beat us."
    .align 4

Table_26D:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_26D_1
Line_26D_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Great work, everyone!"
    .align 4

Table_26E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_26E_1
Line_26E_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": That was a bit tricky..."
    .align 4

Table_26F:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_26F_1
Line_26F_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Woohoo! We did it!"
    .align 4

Table_270:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_270_1
Line_270_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": I am a mighty warrior!"
    .align 4

; Lilith Single Quotes

Table_34C:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_34C_1
Line_34C_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": They had terrible taste."
    .align 4

Table_34D:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_34D_1
Line_34D_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Whew... good work."
    .align 4

Table_34E:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_34E_1
Line_34E_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": What a mess to clean up."
    .align 4

Table_34F:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_34F_1
Line_34F_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Bon voyage."
    .align 4

Table_350:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_350_1
Line_350_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": They needed some more time in the oven."
    .align 4

Table_351:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_351_1
Line_351_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": That was not an easy fight."
    .align 4

Table_352:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1           ; 1 line
    .word Line_352_1
Line_352_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Huh, maybe they had some skill..."
    .align 4

Table_353:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2           ; 2 lines
    .word Line_353_VQ
    .word Line_353_BC
Line_353_VQ:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Learn some responsibility, won't you?"
    .align 4
Line_353_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0       ; start  
    .halfword 0xFFFF    ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": I've had enough!"
    .align 4


Table_58f:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x3               ; 3 lines
    .word Line_58f_1       
    .word Line_58f_2       
    .word Line_58f_3
Line_58f_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x70          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Zzzz..."
    .align 4
Line_58f_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x4C          ; start
    .halfword 0xC8         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Hold on, now's not the time to sleep!"
    .align 4
Line_58f_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB0          ; start
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Forget it, leave him."
    .align 4


Table_592:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_592_1       
    .word Line_592_2   
Line_592_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xAA          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": You couldn't even lay a finger on me!"
    .align 4
Line_592_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x90          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Well, that's not fair. Some of them don't even have fingers!"
    .align 4


Table_594:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_594_1       
    .word Line_594_2   
Line_594_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x80          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I'm a pretty strong fighter now."
    .align 4
Line_594_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x66          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": Incorrect, you're still a rookie!"
    .align 4


Table_596:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_596_1       
    .word Line_596_2   
Line_596_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x7A          ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Huh? Is it over already?"
    .align 4
Line_596_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x60          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": You're the one who dealt the final blow..."
    .align 4


Table_598:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_598_1       
    .word Line_598_2   
Line_598_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": So this is the swordian's power..."
    .align 4
Line_598_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x80          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": A swordian's strength is reliant on their master's."
    .align 4


Table_59a:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_59a_1       
    .word Line_59a_2   
Line_59a_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": This blade strikes true."
    .align 4
Line_59a_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x80          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": Your swift strikes always hit their mark."
    .align 4


Table_59c:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_59c_1       
    .word Line_59c_2   
Line_59c_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x9C          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Pitiful! Wasn't worth the effort."
    .align 4
Line_59c_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x88          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": You're amazing, Young Master!"
    .align 4


Table_59e:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_59e_1       
    .word Line_59e_2   
Line_59e_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xB0          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": We won! Did you see that Lord - Hey! You're not ",WOODROW,"!"
    .align 4
Line_59e_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x94          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I've been here the whole time!"
    .align 4


Table_5a0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5a0_1       
    .word Line_5a0_2   
Line_5a0_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xC0          ; end
    .asciiz COLOR_START,MARY,COLOR_END,": They were so tough I had to unleash my inner beast."
    .align 4
Line_5a0_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB0          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I'm pretty sure that's how you always fight..."
    .align 4


Table_5a2:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5a2_1       
    .word Line_5a2_2   
Line_5a2_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xA0          ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Wasn't my singing mesmerizing?"
    .align 4
Line_5a2_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x90          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I wouldn't call that a song..."
    .align 4


Table_5a4:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5a4_1       
    .word Line_5a4_2   
Line_5a4_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x88          ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": You're so careless, big brother!"
    .align 4
Line_5a4_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x70          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": *sigh* I have nothing to say..."
    .align 4


Table_5a6:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5a6_1       
    .word Line_5a6_2   
Line_5a6_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": How're you able to fight so well in that getup?"
    .align 4
Line_5a6_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB0          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": You're one to talk, ",JOHNNY,"..."
    .align 4


Table_5a8:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5a8_1       
    .word Line_5a8_2   
Line_5a8_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xB0          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Ya need to eat more meat! Yer underweight!"
    .align 4
Line_5a8_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x90          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": They're already nothing but bones..."
    .align 4


Table_5aa:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5aa_1       
    .word Line_5aa_2   
Line_5aa_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xD0          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": That was tough... Don't think we'd survive a second round."
    .align 4
Line_5aa_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB8          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I never want to encounter him again."
    .align 4


Table_5ac:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5ac_1       
    .word Line_5ac_2   
Line_5ac_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x178          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Weapons are evil! We don't need weapons! Gyahahaha!"
    .align 4
Line_5ac_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x168         ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": He's not referring to me, is he...?"
    .align 4


Table_5ae:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5ae_1       
    .word Line_5ae_2   
Line_5ae_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xC0          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": ",CHELSEA,", what did that tree say just now?"
    .align 4
Line_5ae_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xA8          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Wha!? U-Uhm, n-nothing special...?"
    .align 4


Table_5b0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5b0_1       
    .word Line_5b0_2   
Line_5b0_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,MARY,COLOR_END,": Do bats have a strong or weak voice?"
    .align 4
Line_5b0_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB8          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": Why would you ask me such a question...?"
    .align 4


Table_5b2:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5b2_1       
    .word Line_5b2_2   
Line_5b2_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x7B          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Birds of prey strike again!"
    .align 4
Line_5b2_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x60          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": ...Are you talking about us or them?"
    .align 4


Table_5b7:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5b7_1       
    .word Line_5b7_2   
Line_5b7_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xB0          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": How do I say this? GET OUTTA THE WAY!"
    .align 4
Line_5b7_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xA0          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Seriously..."
    .align 4


Table_5b9:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5b9_1       
    .word Line_5b9_2       
    .word Line_5b9_3       
    .word Line_5b9_4   
Line_5b9_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xF0          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": My body is flawless! The cold means nothing!"
    .align 4
Line_5b9_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xE0          ; start
    .halfword 0x188         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Doesn't looking at him make you feel colder?"
    .align 4
Line_5b9_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x168          ; start
    .halfword 0x210         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": ",RUTEE,", why would you say that?"
    .align 4
Line_5b9_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x200          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Mind over matter, girly."
    .align 4


Table_5bd:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5bd_1       
    .word Line_5bd_2   
Line_5bd_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x94          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Are you seriously searching for gald DURING BATTLE?!"
    .align 4
Line_5bd_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x78          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": If I don't, how can I ever reach one million?"
    .align 4


Table_5bf:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5bf_1       
    .word Line_5bf_2   
Line_5bf_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x50          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": What are we?"
    .align 4
Line_5bf_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x40          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,"Everyone",COLOR_END,": UNBEATABLE!"
    .align 4


Table_5c3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_5c3_1       
    .word Line_5c3_2   
Line_5c3_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": Well done, everyone."
    .align 4
Line_5c3_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x68          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Even me, Lord ",WOODROW,"?"
    .align 4


Table_5d1:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5d1_1       
    .word Line_5d1_2          
    .word Line_5d1_3          
    .word Line_5d1_4   
Line_5d1_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x30          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Love!"
    .align 4
Line_5d1_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x20          ; start
    .halfword 0x60          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Friendship!"
    .align 4
Line_5d1_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x50          ; start
    .halfword 0x90          ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": VICTORY!"
    .align 4
Line_5d1_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x80          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Yeah!!"
    .align 4


Table_5d5:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_5d5_1 
Line_5d5_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": I am VICTORIOUS... but why do I feel empty?"
    .align 4


Table_5d6:
    .halfword 0x30          ; 48 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5d6_1       
    .word Line_5d6_2       
    .word Line_5d6_3       
    .word Line_5d6_4   
Line_5d6_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Now that is how we do it!"
    .align 4
Line_5d6_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x60          ; start
    .halfword 0x130         ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Well, that is how YOU do it."
    .align 4
Line_5d6_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x120          ; start
    .halfword 0x1D0         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Seriously, that's all you..."
    .align 4
Line_5d6_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x1B8          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": ..."
    .align 4


Table_5d9:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x3               ; 3 lines
    .word Line_5d9_1       
    .word Line_5d9_2      
    .word Line_5d9_3   
Line_5d9_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": What a satisfying victory."
    .align 4
Line_5d9_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x68          ; start
    .halfword 0xd8         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Minus one person."
    .align 4
Line_5d9_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xC8           ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Yes, please forgive us, ",STAHN,"."
    .align 4


Table_5e0:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x3               ; 3 lines
    .word Line_5e0_1       
    .word Line_5e0_2    
    .word Line_5e0_3   
Line_5e0_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Big bro, we won!"
    .align 4
Line_5e0_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x80          ; start
    .halfword 0x118         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Hey... How long're you gonna follow me around, anyway?"
    .align 4
Line_5e0_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x108          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": How long until you come back home!?"
    .align 4


Table_5e3:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5e3_1       
    .word Line_5e3_2    
    .word Line_5e3_3    
    .word Line_5e3_4   
Line_5e3_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x58          ; end
    .asciiz COLOR_START,MARY,COLOR_END,": It's over!"
    .align 4
Line_5e3_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x40          ; start
    .halfword 0xD8         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Girl power achieved victory!"
    .align 4
Line_5e3_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB8          ; start
    .halfword 0x17C         ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Hmm, perhaps we don't need the guys?"
    .align 4
Line_5e3_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x160          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Well..."
    .align 4


Table_5e7:
    .halfword 0x40          ; 64 Extra Frames 
    .halfword 0x3               ; 3 lines
    .word Line_5e7_1       
    .word Line_5e7_2   
    .word Line_5e7_3   
    .word Line_5e7_4   
Line_5e7_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": We are invincible!"
    .align 4
Line_5e7_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x6C          ; start
    .halfword 0x110         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": Nothing can withstand the might of our muscles!"
    .align 4
    
Line_5e7_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xF0          ; start
    .halfword 0x1A0         ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": This party might be a little too macho for me..."
    .align 4
    
Line_5e7_4:
    .halfword 0x198          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": ..."
    .align 4


Table_5ea:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5ea_1       
    .word Line_5ea_2      
    .word Line_5ea_3      
    .word Line_5ea_4   
Line_5ea_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": It's pretty quiet when ",STAHN,"'s not around."
    .align 4
Line_5ea_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xB0          ; start
    .halfword 0x1A0         ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Without Lord ",WOODROW,", I don't think I can win..."
    .align 4
Line_5ea_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x188         ; start
    .halfword 0x260         ; end
    .asciiz COLOR_START,KONGMAN,COLOR_END,": My muscles ache without ",PHILIA,"."
    .align 4
Line_5ea_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x238          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": Wait, what are you two going on about?"
    .align 4


Table_5ee:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5ee_1       
    .word Line_5ee_2     
    .word Line_5ee_3     
    .word Line_5ee_4   
Line_5ee_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x78          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": What is it, ",STAHN,"?"
    .align 4
Line_5ee_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x50          ; start
    .halfword 0x108         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I feel like I've been going around in circles."
    .align 4
Line_5ee_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xF0         ; start
    .halfword 0x180         ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": I have also felt like that before..."
    .align 4
Line_5ee_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x160          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I wonder what causes that feeling..."
    .align 4


Table_5f2:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x3               ; 3 lines
    .word Line_5f2_1       
    .word Line_5f2_2      
    .word Line_5f2_3   
Line_5f2_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xC8          ; end
    .asciiz COLOR_START,WOODROW,COLOR_END,": The hourglass is quite effective."
    .align 4
Line_5f2_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xBC          ; start
    .halfword 0x180         ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": I could sleep as much as I want with this."
    .align 4
Line_5f2_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x160         ; start
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,JOHNNY,COLOR_END,": That would be the worst use of it ever."
    .align 4


Table_5f5:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x4               ; 4 lines
    .word Line_5f5_1       
    .word Line_5f5_2       
    .word Line_5f5_3       
    .word Line_5f5_4   
Line_5f5_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x30          ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Love!"
    .align 4
Line_5f5_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x20          ; start
    .halfword 0x60          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Friendship!"
    .align 4
Line_5f5_3:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x48          ; start
    .halfword 0x90          ; end
    .asciiz COLOR_START,LILITH,COLOR_END,": Cooking!"
    .align 4
Line_5f5_4:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x78          ; start
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,CHELSEA,COLOR_END,": Yeah! Wait, what?"
    .align 4


Table_609:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_609_1      
Line_609_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Get out of my way if you want to live!"
    .align 4


Table_60a:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_60a_1      
Line_60a_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Don't push your luck, weakling!"
    .align 4


Table_60b:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_60b_1       
Line_60b_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": I'll cut down anyone in my way."
    .align 4


Table_60c:
    .halfword 0x20          ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_60c_1       
    .word Line_60c_2   
Line_60c_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x60          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": What a pushover."
    .align 4
Line_60c_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x42          ; start
    .halfword 0xFFFF       ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Would be nice if all of them were like that."
    .align 4


Table_60e:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_60e_1       
    .word Line_60e_2   
Line_60e_1:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x90          ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Amazing as always, Young Master!"
    .align 4
Line_60e_2:
    .halfword VICTORY_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x80          ; start
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Didn't even require much effort."
    .align 4

; Barbatos

Table_56B:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_56B_1
    .word Line_56B_2
Line_56B_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xA8          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": The beast within screams!"
    .align 4
Line_56B_2:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0xA0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": YOU MUST ALL DIE!"
    .align 4

Table_54C:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_54C
Line_54C:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": Nonsense! This is impossible. Impossible!"
    .align 4

Table_54B:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_54B
Line_54B:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": Hehehe, congratulations are in order!"
    .align 4

Table_53F:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_53F
Line_53F:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": You don't deserve to live!"
    .align 4

Table_565:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_565
Line_565:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": NO!"
    .align 4

Table_566:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_566
Line_566:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": ITEMS!"
    .align 4

Table_567:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_567
Line_567:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Barbatos",COLOR_END,": EVER!!!"
    .align 4

; Battle Quotes

; Soldiers
Table_508:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_508_1
Line_508_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Seinegald Soldier",COLOR_END,": Get them!"
    .align 4

Table_511:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_511_1
Line_511_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Soldier",COLOR_END,": Get them!"
    .align 4

Table_512:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_512_1
Line_512_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,"Soldier",COLOR_END,": They must be captured at all costs!"
    .align 4

Table_7b7:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_7b7_1
Line_7b7_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": What the hell is going on!?"
    .align 4

Table_7b8:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_7b8_1
Line_7b8_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": No time for questions! We gotta defend ourselves!"
    .align 4

Table_06E:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_06E
Line_06E:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Damn! We can't deal with much more of this!"
    .align 4

; Leon 1
Table_8e3:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_8e3_1
    .word Line_8e3_2
Line_8e3_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,RUTEE,COLOR_END,": I'mma wipe that smug look off your face!"
    .align 4
Line_8e3_2:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz "You'll regret pick a fight with us!"
    .align 4

; Lens Hunters
Table_903:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_903_1
Line_903_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Now, let me show you the true power of the Swordians."
    .align 4

; Basilisk
Table_c83:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_c83_1
    .word Line_c83_2
Line_c83_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,PHILIA,COLOR_END,": Those monsters...! They're the ones that petrified me!"
    .align 4
Line_c83_2:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz "turned me into stone!"
    .align 4

Table_c84:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_c84_1
Line_c84_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": No matter the odds, we won't lose!"
    .align 4

; Batista
Table_eac:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_eac_1
Line_eac_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BATISTA,COLOR_END,": You damn brats!"
    .align 4

Table_44f:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_44f_1
Line_44f_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BATISTA,COLOR_END,": Enough!"
    .align 4

Table_450:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_450_1
Line_450_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BATISTA,COLOR_END,": Such weaklings. Ending you was a mercy!"
    .align 4

Table_451:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_451_1
Line_451_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BATISTA,COLOR_END,": Damn you!"
    .align 4


; Cave Queen
Table_101a:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_101a_1
Line_101a_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": Could this be the monster?"
    .align 4

Table_101b:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_101b_1
Line_101b_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": We've come too far to give up! Let's do this!"
    .align 4


; Kraken
Table_1134:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1134_1
Line_1134_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": What IS this thing?! An octopus!?"
    .align 4

Table_1135:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1135_1
Line_1135_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": A Kraken! This monster is feared as a devil of the sea!"
    .align 4


; Tiberius
Table_11A5:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_11A5_1
    .word Line_11A5_2
Line_11A5_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xD8          ; end
    .asciiz COLOR_START,TIBERIUS,COLOR_END,": I am the king of Aquaveil!"
    .align 4
Line_11A5_2:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x110           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,TIBERIUS,COLOR_END,": Kneel, or I'll cut you down!"
    .align 4

Table_460:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_460_1
Line_460_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,TIBERIUS,COLOR_END,": Ugh, impossible..."
    .align 4

Table_45e:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_45e_1
Line_45e_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,TIBERIUS,COLOR_END,": I see your weakness!"
    .align 4

Table_45f:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_45f_1
Line_45f_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF        ; end
    .asciiz COLOR_START,TIBERIUS,COLOR_END,": You're 100 years too early!"
    .align 4


; Dalis
Table_1395:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1395
Line_1395:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DALIS,COLOR_END,": Now that you've come this far, there will be no mercy!"
    .align 4

Table_46f:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_46f_1
Line_46f_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DALIS,COLOR_END,": It ends now!"
    .align 4


; Greybum
Table_13F4:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_13F4_1
    .word Line_13F4_2
Line_13F4_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,GREYBUM,COLOR_END,": Hahahaha. Tremble in despair"
    .align 4
Line_13F4_2:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz "as I deliver onto you a horrific death!"
    .align 4

Table_437:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_437_1
Line_437_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,GREYBUM,COLOR_END,": You won't take me down!"
    .align 4


; Leon 2
Table_1792:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1792_1
Line_1792_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Stop, Leon! Why are you doing this!?"
    .align 4

Table_1793:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1793_1
Line_1793_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,LEON,COLOR_END,": You shall not go any further!"
    .align 4


; Baruk
Table_1a10:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1a10_1
Line_1a10_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BARUK,COLOR_END,": From now on, you'll learn the true meaning of war!"
    .align 4

Table_47E:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_47E
Line_47E:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BARUK,COLOR_END,": Swarm!"
    .align 4

Table_47D:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_47D
Line_47D:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BARUK,COLOR_END,": This will be your end!"
    .align 4

Table_482:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_482
Line_482:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BARUK,COLOR_END,": In the end I remain victorious!"
    .align 4

Table_483:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_483
Line_483:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BARUK,COLOR_END,": You shall pay for your hubris!"
    .align 4

Table_484:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_484_1
Line_484_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,BARUK,COLOR_END,": So this is your true strength..."
    .align 4


; Irene
Table_1a7f:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_1a7f_1
Line_1a7f_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,ILENE,COLOR_END,": I will not allow YOU to stop me!"
    .align 4

Table_48D:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_48D
Line_48D:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,ILENE,COLOR_END,": It's time to get serious!"
    .align 4

Table_48E:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_48E
Line_48E:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,ILENE,COLOR_END,": Please, forgive me...."
    .align 4

Table_48F:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_48F
Line_48F:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,ILENE,COLOR_END,": Kyaaah!"
    .align 4


; Remembrandt
Table_1b1c:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_1b1c_1
    .word Line_1b1c_2
Line_1b1c_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0x128          ; end
    .asciiz COLOR_START,REMBRANDT,COLOR_END,": Behold the pinacle of innovation!"
    .align 4
Line_1b1c_2:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x130           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,REMBRANDT,COLOR_END,": Prepare to face it's terrible power!"
    .align 4

;0x493?

Table_49d:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_49d_1
Line_49d_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,REMBRANDT,COLOR_END,": Go no further!"
    .align 4

Table_49f:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_49f_1
Line_49f_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,REMBRANDT,COLOR_END,": Master Hugo!"
    .align 4

Table_49e:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_49e_1
Line_49e_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,REMBRANDT,COLOR_END,": Farewell!"
    .align 4


; Hugo
Table_4a9:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4a9_1
Line_4a9_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,HUGO,COLOR_END,": Know your place!"
    .align 4

Table_4ab:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4ab_1
Line_4ab_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,HUGO,COLOR_END,": Is this...where it ends?"
    .align 4

Table_4aa:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4aa_1
Line_4aa_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,HUGO,COLOR_END,": It's finished! Slip into nothinginess..."
    .align 4


; Dymlos
Table_36F:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    ;.word Line_36F_1
    .word Line_36F_2
Line_36F_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": You've left yourself open!"
    .align 4
Line_36F_2:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": Don't be so overconfident!"
    .align 4

Table_371:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_371_1
Line_371_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": You've done well...to have bested me..."
    .align 4

Table_370:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_370_1
Line_370_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": I had hoped for a different outcome..."
    .align 4

Table_39A:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_39A
Line_39A:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": Flames seem to work well!"
    .align 4

Table_39B:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_39B
Line_39B:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": They're unaffected by fire!"
    .align 4

; Atwight

Table_3D2:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3D2
Line_3D2:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": Water artes are quite effective!"
    .align 4

Table_3D3:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3D3
Line_3D3:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,ATWIGHT,COLOR_END,": It seems water is ineffective."
    .align 4

; Clemente

Table_3FA:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3FA
Line_3FA:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Water artes are effective!"
    .align 4

Table_3F7:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3F7
Line_3F7:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Earth artes are effective!"
    .align 4

Table_3F8:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3F8
Line_3F8:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Wind artes are effective!"
    .align 4

Table_3F9:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3F9
Line_3F9:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Fire artes are effective!"
    .align 4

Table_3FB:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3FB
Line_3FB:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Light artes are effective!"
    .align 4

Table_3FC:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3FC
Line_3FC:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Dark artes are effective!"
    .align 4

Table_3FD:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_3FD
Line_3FD:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CLEMENTE,COLOR_END,": Hmm, that didn't work."
    .align 4

; Chaltier

Table_422:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_422
Line_422:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Magic is useless against them!"
    .align 4

Table_424:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_424
Line_424:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": Your blade didn't scratch 'em!"
    .align 4

Table_421:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_421
Line_421:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": They seem weak to your blade!"
    .align 4

Table_423:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_423
Line_423:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,CHALTIER,COLOR_END,": They seem weak to your magic!"
    .align 4

; Igtenos

Table_411:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_411
Line_411:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": Wind skills don't work on these guys."
    .align 4

Table_412:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_412
Line_412:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": They're vulnerable to your bow attacks!"
    .align 4

Table_413:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_413
Line_413:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": They're vulnerable to your sword attacks!"
    .align 4

Table_410:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_410
Line_410:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,IGTENOS,COLOR_END,": They seem to be weak to wind artes!"
    .align 4

; MIKTRAN
Table_2060:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_2060_1
Line_2060_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": You insects are no match for a god!"
    .align 4

Table_4c2:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4c2_1
Line_4c2_1:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Know your place!"
    .align 4

Table_4c4:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4c4
Line_4c4:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Did I miscalculate!?"
    .align 4

Table_4c3:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4c3
Line_4c3:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": As expected, you were not worthy."
    .align 4

; Miktran EX
; start of battle chatter
Table_207D:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_207D_1
    .word Line_207D_2
Line_207D_1:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": He's no god, just a thousand-year-old"
    .align 4
Line_207D_2:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz "ghost driven mad by delusion!"
    .align 4

Table_207E:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_207E
Line_207E:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,DYMLOS,COLOR_END,": Thus, by our hand, we shall end this!"
    .align 4

Table_207F:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_207F
Line_207F:
    .halfword BOSS_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,STAHN,COLOR_END,": Yeah!"
    .align 4

; Artes
Table_4D9:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 line
    ;.word Line_4D9_BQ
    .word Line_4D9_BC
Line_4D9_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Heh heh heh!"
    .align 4
Line_4D9_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Heh heh heh!"
    .align 4

Table_4FC:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    ;.word Line_4FC_BQ
    .word Line_4FC_BC
Line_4FC_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Wallow in dispair!"
    .align 4
Line_4FC_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": And sink into despair!"
    .align 4

Table_4ED:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4ED
Line_4ED:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Fade into the chasm between light and dark!"
    .align 4

Table_4EA:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4EA
Line_4EA:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Be consumed by death!"
    .align 4

Table_4FB:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4FB
Line_4FB:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": It's your end!"
    .align 4

Table_4F7:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 line
    ;.word Line_4F7_BQ
    .word Line_4F7_BC
Line_4F7_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Begone!"
    .align 4
Line_4F7_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Begone!"
    .align 4

Table_4E3:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 2 lines
    ;.word Line_4E3_BQ
    .word Line_4E3_BC
Line_4E3_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Playtime is over!"
    .align 4
Line_4E3_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Playtime is over!"
    .align 4

Table_4E8:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4E8
Line_4E8:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": That's impossible!"
    .align 4

Table_4E7:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x2               ; 2 lines
    .word Line_4E7_BQ
    .word Line_4E7_BC
Line_4E7_BQ:
    .halfword IN_BATTLE_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": DIE! DIE! DIE! DIE! DIE!!!"
    .align 4
Line_4E7_BC:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": DIE! DIE! DIE! DIE! DIE!!!"
    .align 4

; Miktran BCs
; Miktrain Raining Orion
; 4f7
Table_4DE:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4DE
Line_4DE:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": You eye sore!"
    .align 4

Table_4F3:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4F3
Line_4F3:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Fall into ruin!"
    .align 4
; 4e7

; Miktran Surviving Hollin
; 4f7
; 4d9
; 4e3
Table_4F8:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4F8
Line_4F8:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Grovel before a god..."
    .align 4
; 4FC

; Miktran Celestial Earth
; 4f7
Table_4F0:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4F0
Line_4F0:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Into the void of your own despair..."
    .align 4

Table_4F4:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4F4
Line_4F4:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Your flesh torn asunder!"
    .align 4

; Miktran Melt thing BC
Table_4FD:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4FD
Line_4FD:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": I tire of you whelps!"
    .align 4

Table_4FE:
    .halfword 0x20              ; 32 Extra Frames 
    .halfword 0x1               ; 1 lines
    .word Line_4FE
Line_4FE:
    .halfword BLAST_CALIBER_QUOTE
    .byte PRIORITY_MEDIUM
    .byte 0x0           ; BC Id -- 0 default/not used
    .halfword 0x0           ; start 
    .halfword 0xFFFF          ; end
    .asciiz COLOR_START,MIKTRAN,COLOR_END,": Behold! The eradication of all!"
    .align 4