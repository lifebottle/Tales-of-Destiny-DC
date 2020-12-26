# Tales of Destiny DC
Tales of Destiny - Director's Cut (Patch)

Discord: https://discord.gg/vVTHGjajy9  

Video on how to use exisiting tools to extract files: https://www.youtube.com/watch?v=FyYQGVAKSUc  

Spreadsheet with HEX to Symbol Mapping: https://docs.google.com/spreadsheets/d/1TZJpTIxXZckXoy5GH0FOsn5KSkakDqRzaTpIkEcGB10  

Use xdelta to patch your ROM.  Patch works with default ISO ripped from ImgBurn.  

Artes, Items and some other stuff are uncompressed in the **SLPS_258.42** file.  Use a hex editor to find what you need.  This should be good enough for a menu patch.  Note: Changes to this doesn't appear to affect Leon's side.

00199900 - Names  
0019C380 - Artes  
001A0FA0 - ???  
001A6870 - World Map Names  
001AB670 - Menu  
001Ab910 - Materials  
001BF2F0 - Categories  
0019A190 - Synopsis Titles  

The script texts are the **.rsce** files found in TOD_DC/DAT/MGLK/xxxxx/xxxxx_xx.rsce

![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/menu_patch.png "Sample menu patch.")