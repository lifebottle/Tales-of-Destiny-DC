Cartographer
Version PR3

Intial Release: Dec. 29, 2008

by RedComet
redcomet@rpgclassics.com

--------------------------------------

1. Introduction
2. Usage
3. Commands
4. Table Files
5. Credits

--------------------------------------

1. Introduction

--------------------------------------

Cartographer is a program designed to extract the script(s) from a file. Cartographer
is intended to replace the now out-of-date romjuice by prez.

--------------------------------------

2. Usage

--------------------------------------

Cartographer rom.ext commands.txt script.txt -s/-m

rom.ext specifies the file to dump text from.

commands.txt contains the dumping commands (see below) that specify how to
dump the text.

script.txt is the base filename for the output file(s) to which the text is dumped.

-s/-m is a switch that specifies whether to dump all blocks contained in commands.txt
to a single file (-s) or to dump each block to a separate file (-m).

--------------------------------------

3. Commands

--------------------------------------

#GAME NAME:	This specifies the name of the game text is being dumped from.
		The name specifed here will be included in the output file. This
		name is only output once, at the beginning of each file.

#BLOCK NAME:	Each block of text is assigned the name specified. This name
		is output at the beginning of each block. Multiple blocks can
		share the same name, so it is the user's responsibility to keep
		track of which block is which.

		When multiple files are specified at the command line, each block
		is dumped to a separate text file. The filename is created by combining
		the output base filename given at the parameter in the command line
		with a block number used by Cartographer internally to identify each
		block.

#TYPE:		This allows the user to specify one of three possible dump types:
		NORMAL, FIXED_STRING, FIXED_STRING && FIXED_LINE

		NORMAL:
			The table entries control the output of text, i.e. line
			breaks are only output where the table entries specify.

		FIXED_STRING:
			This is for games that use a fixed string length. Line
			breaks will be output when the specified number of bytes
			have been read.

			See #STRING LENGTH below.

		FIXED_STRING && FIXED_LINE:
			This is for games that use a fixed string and a fixed line
			length. Line breaks will be output when the specified
			number of bytes have been read.

			See #STRING LENGTH and #LINE LENGTH below.

#STRING LENGTH:	This specifies the length of the string in bytes. Once the number
		of bytes specified have been dumped, a line break will be output
		to the script file.

		Only include this command if TYPE has been specified to either
		FIXED_STRING or FIXED_STRING && FIXED_LINE.

#STRING END:	This allows the user to specify whether or not they want to
		include an artificial control code at the end of the string.
		
		Yes or No option only.

#END CTRL:	If Yes was specified for #STRING END, this command allows the
		user to specify the artificial control code they want output.
		If Yes was specified for #STRING END and this command is omitted,
		the default artificial control code (END) is used.

#LINE LENGTH:	Similar to #STRING LENGTH, this command specifies the length of
		a line in bytes. Once the number of bytes specifed have been
		dumped, a line break will be output to the script file.

#LINE END:	This allows the user to specify whether or not they want to 
		include an artificial control code at the end of the line.

		Yes or No option only.

#LINE CTRL:	If Yes was specified for #LINE END, this command allows the
		user to specify the artificial control code they want output.
		If Yes was specified for #LINE END and this command is omitted,
		the default artificial control code (LINE) is used.

#METHOD:	This allows the user to specify one of three ways to dump the text:
		POINTER, POINTER_RELATIVE RAW

		POINTER:
			Dump the text based on a pointer table.

		POINTER_RELATIVE:
			Same as a pointer, but this allows the user to dump text
			using a pointer table that contains relative pointers
			instead of absolute pointers.

		POINTER_RELATIVE_PC:
			Similar to POINTER_RELATIVE, except the base value is a relative
			value instead of an absolute value.

			See #RELATIVE PC below.

		RAW:
			A simple start to stop dump, like romjuice.

#POINTER ENDIAN:
		Specifies the endianess of the pointers: BIG or LITTLE

#POINTER TABLE START:
		Specifies the beginning address of the pointer table.

#POINTER TABLE STOP:
		Specifies the ending address of the pointer table.

#POINTER SIZE:
		Specifies the size of the pointer in bytes, e.g. 16-bit pointers
		have a size of 2, 32-bit pointers have a size of 4, etc.

#POINTER SPACE:	Specifies the number of bytes between each pointer to ignore.
		This is useful for games that embed additional information between
		each pointer. If pointers occur one after the other, specify
		a pointer space size of 0.

#ATLAS PTRS:	SE allows the user the option of dumping an Atlas compatible
		script. This option specifies whether to include Atlas style
		pointer writes, e.g. #W16($12345), in the dump or not.

		Yes or No option only.

#BASE POINTER:	This specifies the value to add to every pointer when using
		the POINTER_RELATIVE dump method.

#RELATIVE PC:	This specifies whether to use the address of the pointer as the
		base pointer address. I've only seen one game that does this so far,
		but there are probably more.

		Yes or No option only.

#SCRIPT START:	Specifies the beginning address for a RAW dump.

#SCRIPT STOP:	Specifies the ending address for a RAW dump.

#TABLE:		The filename of the table to use for dumping the script. Each
		block specifies its own table file, thus allowing the user to
		dump multiple blocks that use different tables at once, e.g.
		dialogue and menu options.

#COMMENTS:	Used to determine if the user wants each line of text in the
		script to begin with Atlas style (//) comments or not.

		Yes or No option only.

#END BLOCK:	This specifies the end of the current block commands. This option
		must be included, otherwise the commands for the next block will
		overwrite the commands for the current block.

------------
Dependencies:
------------

Not every one of the above commands need be included. In fact, it's impossible to
include every command. Following is a list of commands that are dependent upon
certain options being specified in the previous command(s):

-----				-----------------
#TYPE				Required Commands
-----				-----------------
FIXED_STRING			#STRING LENGTH, #STRING END
FIXED_STRING && FIXED_LINE	#STRING LENGTH, #STRING END, #LINE LENGTH, #LINE END

-------				-----------------
#METHOD				Required Commands
-------				-----------------
POINTER				#POINTER TABLE START, #POINTER TABLE STOP,
				#POINTER SIZE, #POINTER SPACE, #POINTER ENDIAN,
				#ATLAS PTRS

				Note: These commands may be specified in any
				order, but they are all required.


POINTER_RELATIVE		#BASE POINTER plus the commands required for
				POINTER method above.

POINTER_RELATIVE_PC		#RELATIVE BASE plus the commands required for
				POINTER method above.

RAW				#SCRIPT START, #SCRIPT STOP

--------
Required:
--------

There are also certain commands which must be included:

GAME NAME, BLOCK NAME, TYPE, METHOD, TABLE, COMMENTS.

Additionally every block must end with an END BLOCK command.

--------
Features:
--------

You can also embed comments in your command files. Everything on the line after a //
is simply ignored. This is really handy if you like to make notes to yourself.

--------------------------------------

4. Table File

--------------------------------------

Although I built Cartographer using Klarth's TableLib v1.0, there are a few changes I had
to make to accomplish my goals. Here's a list of features from Klarth's readme with the
removed or disabled features omitted:

      TableLib supports a slightly different feature set than most other programs.
      - Supports virtually unlimited hex and string lengths, as long as the hex strings are whole bytes.
        0123456789=super long string here <-- This is fine, the hex string represents 5 whole bytes.
        01234=another long string <-- Error, the hex string is 2.5 bytes.
      - The same table can be used for both insertion and dumping, TableReader accomodates for the changes.
      - Ability to add newline characters for dumping.  They will be ignored during insertion.
        /FF=<END>\n\n <-- This is how you should define your endtokens so the library functions properly
      - The so-called "linked entry" from Thingy terminology, but implemented a bit better.  This allows you to
        dump control codes that have parameter bytes cleanly, without it being dumped as text.
        $0500=<Color>,1 <-- Dumps 0500 as <Color> and dumping one parameter byte afterwards as a <$XX> hex entry.

End tokens specifed by beginning the entry with a '/' (like /FF=<END>\n\n above) are used
by the Pointer dumping methods to determine when the end of the string has been reached.
I also disabled the newline removal on end tokens.

Please note that specifying an end token when using the RAW dumping mode will result in
portions of the script being omitted. There's no simple fix short of rewriting Klarth's
code that I can come up with at this time. So, if your dump looks choppy and you're
using the RAW mode, make sure you don't have any end tokens defined in your table.

Control codes that can be added to table entries:

\r		Line break with commenting (//) on the next line.
\n		Line break with no commenting on the next line.

These can be used as many times as you want per entry to format your text.

If a table entry begins with a non-numeric character other than '/' or '$', the entry is
flagged as an error. However, a blank entry (e.g. FFFF=) is valid and is simply ignored.

--------------------------------------

5. Credits

--------------------------------------

Klarth		- For creating Atlas and TableLib.
Kaioshin	- For helping test Cartographer.
Gideon Zhi	- For suggesting the name Cartographer.
prez		- For creating romjuice.

And everyone else who has given me feedback on this program. If you find a bug, please
let me know!