## Translation of the menu (SLPS file)
Files available for now :
Artes : https://docs.google.com/spreadsheets/d/1w1H0ELiTYgQwzOSzdUjt8YmwlB1I1_6Fyz5MxSFDVHM/edit#gid=956154887

# How to

In the google sheet, you have two columns. One is the original Japanese text in the game and the second one is 
the English translation.
![alt text](https://raw.githubusercontent.com/pnvnd/Tales-of-Destiny-DC/master/patch/SLPS/HowToSLPS.png "Sample google sheet")

Both the comment //Text and #WRITE needs to stay unchanged. You only need to modify the japanese text under.
You can press ALT+Enter to add a new line in a cell of the google sheet

Any [Text] refer to a set of special hex values. They might be button, image, name of character or pointer to number.
The two most important are [LINE] and [END].   
[LINE] : new line   
[END] : end of the sentence   
** [END] should always be at the end of your sentence

Other tags may include button, symbol, number.  
Ex: [Sign5] is a Sword in the Artes menu
