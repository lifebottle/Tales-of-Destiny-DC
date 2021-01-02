# Tales of Destiny DC
Tales of Destiny - Director's Cut (Patch)

Discord: 
https://discord.gg/vVTHGjajy9  

Video on how to use exisiting tools to extract files:  
https://www.youtube.com/watch?v=FyYQGVAKSUc  

Spreadsheet with HEX to Symbol Mapping:  
Menu - Items: https://docs.google.com/spreadsheets/d/1TZJpTIxXZckXoy5GH0FOsn5KSkakDqRzaTpIkEcGB10  
Menu - Artes: https://docs.google.com/spreadsheets/d/1RMCQqtipVHrf9GM91VIz57tzvcEL3Prow1J0D_O1PPw  

Use xdelta to patch your ROM.  Patch works with **SLPS_258.42** and ISO created from ImgBurn.  

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

## Resrouces
- http://todrtrans.pbworks.com/w/page/22323479/FrontPage
- https://aselia.fandom.com/wiki/Tales_of_Destiny
- https://w.atwiki.jp/tod_remake/
- https://gamers-high.com/toddc/
- http://restalittle.blog.fc2.com/blog-category-5.html
- https://hyouta.com/vesperia/
- https://gamefaqs.gamespot.com/ps2/934092-tales-of-destiny/faqs/47931

## Tools
- Visual Studio Code + Hex Editor extension from Microsoft
- https://translate.google.com
- https://www.deepl.com/en/translator
- https://www.bing.com/translator
- https://www.psx-place.com/threads/apache.19171/

## Credits
- Thanks to dizzycrunch and chucho1224 for sending me resources to speed up the patch
- Thanks to saito for sending me tools for packaging ISO files properly
- Thanks to Alizor for helping me get started with wonderful resources
- Thanks to everyone on the Absolute Zero discord who offered advice