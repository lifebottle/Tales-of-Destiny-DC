.ps2
.open "../DAT_FILES_ORIGINAL/00057.md1", "../DAT_FILES_PATCHED/00057.md1", 0x003B5980

; Shop

.org 0x003bacb0
    nop     ; nop out jump to print the first two letters

.org 0x003BC9FC
    lui at, 0x42C8  ; "Replenish" width
    ; float 100

.org 0x003BCA0C
    lui at, 0x428D  ; "Cancel" width
    ; float 70.5

.close

