.ps2
.open "../DAT_FILES_ORIGINAL/00055.md1", "../DAT_FILES_PATCHED/00055.md1", 0x003B5980

; Status Menu?

.org 0x003B65E4     ; Name Size to pass to rename
    li v0, 0x6

.close