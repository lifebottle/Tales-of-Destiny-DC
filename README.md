# Tales of Destiny DC
Tales of Destiny - Director's Cut (Patch)
Video on how to use exisiting tools to extract files: https://www.youtube.com/watch?v=FyYQGVAKSUc  
Spreadsheet with HEX to Symbol Mapping: https://docs.google.com/spreadsheets/d/1TZJpTIxXZckXoy5GH0FOsn5KSkakDqRzaTpIkEcGB10  
Use xdelta to patch your ROM.  Patch works with default ISO ripped from ImgBurn.

Artes, Items and some other stuff are uncompressed in the **SLPS_258.42** file.  Use a hex editor to find what you need.  This should be good enough for a menu patch.  Note: Changes to this doesn't appear to affect Leon's side.

00199900 - names  
0019c380 - artes  
001a0fa0 - ???  
001a6870 - world map names  
001ab670 - menu  
001ab910 - materials  
001bf2f0 - categories  
0019a190 - synopsis titles  

The script texts are the **.rsce** files found in TOD_DC/DAT/MGLK/xxxxx/xxxxx_xx.rsce

![alt text](https://github.com/pnvnd/Tales-of_Destiny-DC/raw/master/menu_patch_0.0.2.png "Sample menu patch.")