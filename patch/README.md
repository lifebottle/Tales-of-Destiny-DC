# Tales of Destiny DC - Patch Instructions
Get xdeltaUI from https://www.romhacking.net/utilities/598/
1. Open xdeltaUI.exe
1. Select original ISO file
1. Select patch file .xdelta
1. Browse to a location to save the patched ISO file
1. Enjoy!

![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/xdelta_patch.png "xdeltaUI patching instructions.")

# Creating xDelta Patch
1. Get xdeltaUI from https://www.romhacking.net/utilities/598/
1. Open xDeltaUI.exe
1. Click on `Create Patch` tab  
![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/XDELTA/xdelta_01.png "Create xdeltaUI patch step 1.")
1. Original File: Browse to a clean ISO
1. Modified File: Browse to a patched ISO
1. Patch Destination: Browse to a location to save the patch  
![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/XDELTA/xdelta_02.png "Create xdeltaUI patch step 2.")
1. Click `Patch` and wait about 1 minute.  
![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/XDELTA/xdelta_03.png "Create xdeltaUI patch step 3.")
1. If patch takes longer than 5 minutes, the patched ISO might me too different from the original, resulting in large patch size.
1. Upload patch somewhere and share it!

# Working with ToDDCTools_v1.1_by_RangerRus
1. Download ToDDCTools_v1.1_by_RangerRus and extract contents.
1. Copy `ToDDCTools_v1.1.exe` and `ToDDCTools_v1.1_unpack_(DAT.BIN).bat` to the same directory as `TOD_DC\DAT.BIN` and `TOD_DC\DAT.TBL`
1. Double-click on `ToDDCTools_v1.1_unpack_(DAT.BIN).bat` to extract everything into a `TOD_DC\DAT` folder.
1. Copy both `ToDDCTools_v1.1.exe` and `ToDDCTools_v1.1_unpack_MGLK_(all_files).bat` to `TOD_DC\DAT\MGLK`
1. Run `ToDDCTools_v1.1_unpack_MGLK_(all_files).bat` to extract `.mglk` files (1074 folders total)
1. Edit `TOD_DC\DAT\MGLK\XXXXX\XXXXX.rsce` files with a HEX editor (same process as SLPS_258_.42) and save.
1. Re-pack ALL `.mglk` file with `ToDDCTools_v1.1_pack_MGLK_(all_files).bat` in the MGLK folder (takes long)
1. To re-pack a single MGLK file, open a command-line terminal and use `ToDDCTools_v1.1.exe mglk XXXXX.mglk` where both the `XXXXX.mglk` file and `XXXXX` directory exist.
1. Copy the `XXXXX.mglk` file into `TOD_DC\DAT_FILES` to re-pack the DAT.BIN and DAT.TBL (create `DAT_FILES` directory yourself)
1. Make sure changes are saved by putting updated files in the `TOD_DC\DAT_FILES` folder (for .md1, .mglk, .tm2  files, etc.)
1. To re-pack `DAT.BIN` and `DAT.TBL` file, copy `ToDDCTools_v1.1_pack_(DAT.BIN).bat` to `TOD_DC` directory
1. Use some ISO tool to swap out `DAT.BIN` and `DAT.TBL` in the `TOD_DC.ISO`
1. Use xDelta to Patch the file and upload / commit to GitHub

# Working with HEX Dumps
1. After extracting all of the MGLK files, use this BAT script to move all `.RSCE` files into a single directory: `for /r "C:\temp\DAT\MGLK" %%x in (*.rsce) do move "%%x" "C:\temp\DAT_FILES"`
1. Use Windows Subsystem for Linux (or Cygwin64, or Git-bash, or whatever that has `grep`)
1. Convert all `.RSCE` (binary) files into plain-text files (HEX dump): `find . -name "*.rsce" -exec xxd -i "{}" "{}.h" ";"`
1. This will create a copy of the `.RSCE` file and HEX dump into a file with the same name with a `.h` extension
1. Open the folder containing all of the `.RSCE` HEX dumpped file in Visual Studio Code
1. Use CTRL+SHIFT+F to search string in all files in this directory.
1. Enter some HEX in this format to find story/skit dialog: `0x99, 0xA6, 0x20, 0x99, 0x8C`
1. Once you find the file with the story/skit you want, SHARE YOUR INFO.


# Working with Pointers
1. Tiger Blade for example: <Sword Icon> 虎牙破斬 starts at 1A0D70
2. Magic (ELF) number is FF000.  Add Arte Position starting with <Sword Icon> + ELF (1A0D70 + FF000) = 29FD70
3. This is a (linear) pointer so reverse it: 29 FD 70 <-> 70 FD 29
4. Search for HEX 70 FD 29.  Find this at position 18 30 A8
5. Move <Sword Icon> 虎牙破斬 left 3 bytes as usual, take note of the new position: 1A0D6E
6. 1A0D6E + FF000 = 29 FD 6E (reverse 6E FD 29)
7. Replace 70 FD 29 with 6E FD 29 found at 18 30 A8
8. Save
