.ps2
.open "../DAT_FILES_ORIGINAL/00066.md1", "../DAT_FILES_PATCHED/00066.md1", 0x003C7A80

; Monster Book

; these correspond to some float values
; sorry too tired to figure out what math its doing and what is what
; but you can take these and add/subtract a little bit by bit
; to find something that fits nice/better?
.org 0x003CB078
    lui at, 0x42AA      ; move "Level" text right a bit

.org 0x003CB020
    lui at, 0x4288      ; "Name" end width?

.org 0x003CAFE0
    lui at, 0x429A      ; "Level" highlight start position

.org 0x003CB010
    lui at, 0x428A      ; "Level" highlight width?

.close