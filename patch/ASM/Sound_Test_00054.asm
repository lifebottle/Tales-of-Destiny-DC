; SOUND TEST -- TEST BUILDS ONLY
.open "../DAT_FILES_ORIGINAL/00054.md1", "../DAT_FILES_PATCHED/00054_DEBUG_BUILD_ONLY.md1",  0x003B5980
.ps2

.org 0x003b8ddc
    jal Display_Text_Sound_Test_Wrapper

.org 0x003b8348
    jal Setup_Text_Sound_Test_Wrapper

.close