# Tales of Destiny DC
Tales of Destiny - Director's Cut (Patch)

Discord: 
https://discord.gg/r2ApPegDfx 

Video on how to use exisiting tools to extract files:  
https://www.youtube.com/watch?v=FyYQGVAKSUc  

Spreadsheet with HEX to Symbol Mapping:  
Menu - Items: https://docs.google.com/spreadsheets/d/1TZJpTIxXZckXoy5GH0FOsn5KSkakDqRzaTpIkEcGB10  
Menu - Artes: https://docs.google.com/spreadsheets/d/1RMCQqtipVHrf9GM91VIz57tzvcEL3Prow1J0D_O1PPw  
Menu - Enemy: https://docs.google.com/spreadsheets/d/1ukINdjdGc3kNJCZe0gJYq3_c5n2TAC-hvN18FH3AipY  
Menu - Pointers: https://docs.google.com/spreadsheets/d/1rErdcmKswMge356yLTQVrbNZ_CG-l09p95RJYBFwalE  
Menu - Titles: https://docs.google.com/spreadsheets/d/11xHJ_wnVdDqs96-SB30bPmRNHZuO6rENCKBs1I9GVVA

Use xdelta to patch your ROM with a clean ISO (http://redump.org/disc/2808/).  

Artes, Items and some other stuff are uncompressed in the **SLPS_258.42** file.  Use a hex editor to find what you need.  This should be good enough for a menu patch.  

00199900 - Names  
0019C380 - Artes  
001A0FA0 - ???  
001A6870 - World Map Names  
001AB670 - Menu  
001AB910 - Materials  
001BF2F0 - Categories  
0019A190 - Synopsis Titles  

The script texts are the **.rsce** files found in TOD_DC/DAT/MGLK/xxxxx/xxxxx_xx.rsce  

## Draconis
13558_61  Start of the game and escape pod room  
13559_88  main hall after the start of the game  
13569_44  draconis kitchen room  
13564_89  draconis room before sword with screen  
13563_32 hall outside sword oh! shoot moment  
13570_117 sword room draconis  
13563_32 hall outside sword room Rutee first convo  
13562_82 draconis helm room  
13558_61  escape pod room and Start of the game  

## Chelsea hut's
13582_61 Chelsea bedroom after draconis  
13583_76  line 301- Main room chelsea house  
13586_76 line 201-221  
13581_54 line 287  outside cabin(text about skit)  
13592_106 line 285 first conversation with chelsea next to tree  
13581_54 line 375-415 return of the party to front of chelsea house  
13583_76 line 301-433 Main room chelsea house  
13581_54 line419-439 outside cabin  

## Road to Janos
13603_53 line 369-437fandaria moutiain trail  
13610_92 line 13-53 Lens merchant  
13611_92 line 13-53 same line lens merchant  

## Janos
13630_27  lower town Janos  
13627_84  line 277-1075 upper Town Janos huge dialogue file  
13629_17  line 15-155 Janos shopping street  
13639_17  same text than 13629_17 Janos shopping street  
13634_35 house in janos with 2 npcs  
13644_35 same has 13634_35 house janos 2 npc  
13633_34 janos inn  
13643_26 janos inn same and with different dialogue than 13633_34  

## Janos Temple
13603_53 line 281-365 trail dialogue mary and stahn
13657_63 - Inside Temple: Main room with broken pillars & Former Lens Hunter convo w/ Stahn & Rutee line 136-167 
13658_85 - Inside Temple: 821-1037 Trap Room convo 1041-1049 Leon/Chaltier Short convo (notice line 1177 and 1059)
13656_35 line 13-61 Rutee/stahn/Mary outside dungeon
## Back to Janos 
13627_84  line 911-927  convo front of the gate ( npc line 279-323)
13633_34 line127-271  Conversation in the inn
13631_35 line 275-315 bed room inn convo
13627_84 line 931-1075 janos north gate rerize tutorial + extraconvo

## Harmentz
13667_70 line 409- First convo in harmentz
  line 349 - Villager speaking about Walt
  line 409 - Dialog when they enter the town



## Leon's Side
## !(if you see duplicate file you need to do both file if you translate this part or else we will have to come back to fix it later)!

## Darilsheid
13736_65 Start of leon side with maria dialogue hugo manor dining room 

13735_49 main hugo manor room with npc  (line 153+205)
  13754_36 duplicate 13735_49 main hugo manor room with npc (line93-145)

13737_40 Manor Upper bedroom (1+7+15)
  13756_39 duplicate 13737_40 Manor Upper bedroom (1+7+15)

13738_51 line 5 Manor Main bedroom 
  13757_43 line 7 duplicate 13738_51 Manor Main bedroom

13725_28 outside manor convo with maria line 297-361 npc line59-65+109+121

13661_36 npc outside manor 
13725_28 npc outside manor  
13744_35 npc outside manor   
  
13721_77 Darishield shopping street 
  13740_84 Darishield shopping street duplicate

13730_63 Darishield bar 
13749_84Darishield bar
13727_35 Darishield bar annex
13746_32 Darishield bar annex

13723_64 Darilshield shopping street annex 22:55
  13742_63  dupplicate 13723_64 Darilshield shopping street annex 22:55

13734_31 Darilshield shopping street annex house 22:18
  13753_32  dupplicate 13723_31 Darilshield shopping street annex house 22:18




![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/menu_patch.png "Sample menu patch.")


## Resources
- https://drive.google.com/file/d/1o-z7mNttpQI8nW4TmApNxIPguTY2RJYN (Leon)
- https://docs.google.com/document/d/1af6OWsV6cugbeIi1Z-d3DCvp_jQuzJE0YfR2zCOihrA (Stahn)
- http://todrtrans.pbworks.com/w/page/22323479/FrontPage
- https://aselia.fandom.com/wiki/Tales_of_Destiny
- https://w.atwiki.jp/tod_remake/
- https://w.atwiki.jp/talesofdic/pages/4602.html
- https://gamers-high.com/toddc/
- http://restalittle.blog.fc2.com/blog-category-5.html
- https://hyouta.com/vesperia/
- https://gamefaqs.gamespot.com/ps2/934092-tales-of-destiny/faqs/47931
- https://gamefaqs.gamespot.com/ps2/942208-tales-of-destiny-directors-cut/saves

## Tools
- https://tales-of-destiny-dc.vercel.app/hexToJpn
- https://tales-of-destiny-dc.vercel.app/jpnToHex
- https://tales-of-destiny-dc.vercel.app/engToHex
- http://temple-tales.ru/translations/tools/ToDDCTools_v1.1_by_RangerRus.rar
- https://code.visualstudio.com/download
- https://marketplace.visualstudio.com/items?itemName=ms-vscode.hexeditor
- https://translate.google.com
- https://www.deepl.com/en/translator
- https://www.bing.com/translator
- https://www.psx-place.com/threads/apache.19171/
- https://www.romhacking.net/utilities/598/
- https://www.romhacking.net/utilities/1419/

## Credits
- Thanks to the Temple of Tales Translations team (http://temple-tales.ru/translations.html) for providing tools to edit story and skits
- Thanks to dizzycrunch and chucho1224 for sending me resources to speed up the patch
- Thanks to saito for sending me tools for packaging ISO files properly
- Thanks to Alizor for helping me get started with wonderful resources
- Thanks to everyone on the Absolute Zero discord who offered advice
