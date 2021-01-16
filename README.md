# Tales of Destiny DC
Tales of Destiny - Director's Cut (Patch)

Discord: 
https://discord.gg/vVTHGjajy9  

Video on how to use exisiting tools to extract files:  
https://www.youtube.com/watch?v=FyYQGVAKSUc  

Spreadsheet with HEX to Symbol Mapping:  
Menu - Items: https://docs.google.com/spreadsheets/d/1TZJpTIxXZckXoy5GH0FOsn5KSkakDqRzaTpIkEcGB10  
Menu - Artes: https://docs.google.com/spreadsheets/d/1RMCQqtipVHrf9GM91VIz57tzvcEL3Prow1J0D_O1PPw  
Menu - Enemy: https://docs.google.com/spreadsheets/d/1ukINdjdGc3kNJCZe0gJYq3_c5n2TAC-hvN18FH3AipY  
Menu - Pointers: https://docs.google.com/spreadsheets/d/1rErdcmKswMge356yLTQVrbNZ_CG-l09p95RJYBFwalE  

Use xdelta to patch your ROM with a clean ISO (http://redump.org/disc/2808/).  

Artes, Items and some other stuff are uncompressed in the **SLPS_258.42** file.  Use a hex editor to find what you need.  This should be good enough for a menu patch.  Note: Changes to this doesn't appear to affect Leon's side.

00199900 - Names  
0019C380 - Artes  
001A0FA0 - ???  
001A6870 - World Map Names  
001AB670 - Menu  
001AB910 - Materials  
001BF2F0 - Categories  
0019A190 - Synopsis Titles  

The script texts are the **.rsce** files found in TOD_DC/DAT/MGLK/xxxxx/xxxxx_xx.rsce

![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/menu_patch.png "Sample menu patch.")


## Resources
- https://docs.google.com/document/d/1af6OWsV6cugbeIi1Z-d3DCvp_jQuzJE0YfR2zCOihrA
- https://docs.google.com/document/d/1juyHSSsSiBpQbqAkwcJbK0YuQWhrRGUsECM9mPRcENA
- http://todrtrans.pbworks.com/w/page/22323479/FrontPage
- https://aselia.fandom.com/wiki/Tales_of_Destiny
- https://w.atwiki.jp/tod_remake/
- https://w.atwiki.jp/talesofdic/pages/4602.html
- https://gamers-high.com/toddc/
- http://restalittle.blog.fc2.com/blog-category-5.html
- https://hyouta.com/vesperia/
- https://gamefaqs.gamespot.com/ps2/934092-tales-of-destiny/faqs/47931

## Tools
- https://code.visualstudio.com/download
- https://marketplace.visualstudio.com/items?itemName=ms-vscode.hexeditor
- https://translate.google.com
- https://www.deepl.com/en/translator
- https://www.bing.com/translator
- https://www.psx-place.com/threads/apache.19171/
- https://www.romhacking.net/utilities/598/
- https://www.romhacking.net/utilities/1419/

## Credits
- Thanks to dizzycrunch and chucho1224 for sending me resources to speed up the patch
- Thanks to saito for sending me tools for packaging ISO files properly
- Thanks to Alizor for helping me get started with wonderful resources
- Thanks to everyone on the Absolute Zero discord who offered advice
