# Translation of the menu (SLPS file)
Files available for now :
Artes : https://docs.google.com/spreadsheets/d/1w1H0ELiTYgQwzOSzdUjt8YmwlB1I1_6Fyz5MxSFDVHM/edit#gid=956154887

## Working in the google sheet

In the google sheet, you have two columns. One is the original Japanese text in the game and the second one is 
the English translation.
![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/SLPS/HowToSLPS.png "Sample google sheet")

Both the comment //Text and #WRITE needs to stay unchanged. You only need to modify the japanese text under.
You can press ALT+Enter to add a new line in a cell of the google sheet. You don't need to have the same number of character, your
translation might be bigger and the pointers will be adjusted.

Any [Text] refer to a set of special hex values. They might be button, image, name of character or pointer to number.
The two most important are [LINE] and [END].   
[LINE] : new line   
[END] : end of the sentence   
** [END] should always be at the end of your sentence

Other tags may include button, symbol, number.  
Ex: [Sign5] is a Sword in the Artes menu

## Creating a new SLPS to validate your translation

When you made a bunch of changes in the google sheet and you want to view your translation, you can use the scripts in
the subfolder "Tales-of-Destiny-DC/scripts/SLPS_Updates". To use these script, you'll need to have Python installed on your computer
with some packages.

Install python from this site https://www.python.org/downloads/release/python-379/   
To install the packages, double click on Install_requirements.bat in "SLPS/scripts"

Other scripts in "SLPS/scripts" will update one of the block/section. They are named as "TODDC_update_xxx.bat". 
Once a script is ran, it will generate a new SLPS_xxx.42 file for you to test

Ex:
If you are working on Artes, you need to use the script "TODDC_update_Artes.bat". You can then use the
new SLPS to test in the game (see next section).

## Validation of the translation using the new SLPS

Once you have used one of the script, you'll have a new SLPS file under the folder "SLPS/scripts". You are now ready
to validate your translation in the game :
1) Open PCSX2 emulator
2) In the menu, click on System then "Run ELF"
3) In the dialog box, make sure to show "All files" then go to the path of the new SLPS file

![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/SLPS/ELF1.png "PS2 emulator")
![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/SLPS/ELF2.png "Choosing the file")

4) Select it and the game should launch with this file

## Multiple blocks in the SLPS file

When we work on these translations, we splitted the SPLS in multiple blocks. Each block contain different sections ( 1 or more).
Each section will probably have his own Google sheet. The google sheets information will always be at the top of this file.

Ex:
Block 3
- Support

BlockId 4
- Title

BlockId 5  
- Other_Items  
- Artes
- Strategy

When you run one of the batch file to recreate the SLPS file, its actually recreating one block at a time. By running the whole block and 
not only a specific section, all the pointers to text move at the same time and we avoid having weird errors.

Ex:  
TODDC_update_Artes.bat is inserting text from Block 5 in a new SLPS and remaking all the pointers