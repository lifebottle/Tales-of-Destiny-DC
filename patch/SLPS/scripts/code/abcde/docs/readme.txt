abcde
Version 0.0.9
(a.k.a. proof-of-concept work-in-progress might-melt-your-cpu insert-disclaimer-here edition)
2020-08-27

Table of Contents:
1) About abcde
1.1) History
2) Dependencies
3) Synopsis of Table File Syntax
4) Cartographer Support
5) Atlas Support
6) Customization Support
6.1) Extracting Embedded Pointer Text
7) Improved Text-To-Binary Algorithm
8) A Note About UTF-8
9) Future Plans
10) Thanks
11) Contact
12) Version History



1) About abcde

Usage:
perl abcde.pl <general options> [-cm <command module name> [<command module options>]]

Run `perl abcde.pl` to get more detailed usage information.

In its most basic form, abcde is a table-file-based binary-to-text and text-to-binary translation utility intended to make ROM hacking just a little bit easier. Give it one or more table files, tell it whether you want to translate from binary to text or vice-versa, and then watch in amazement as the data you feed it on STDIN appears on STDOUT translated according to the provided table file(s). Or don't, because a utility like that is probably pretty useless all on its own unless you happen to be one of those few people who enjoy doing things like writing your own hex editor or assembler in your spare time, in which case this form of usage might be exactly what you want. For everybody else, however, abcde also supports (with a couple of caveats) both Cartographer and Atlas command files, giving it a high degree of backwards compatibility with what are arguably the most popular general-purpose script extraction and insertion utilities at the time of writing.

Given that utilities like Cartographer and Atlas already exist, the obvious question is: why make another one? The short answer is that abcde consolidates features from a variety of separate mutually-incompatible existing utilities into a single utility, improves on those features, and adds several completely new features, thus significantly expanding the range of script encodings which can be extracted and inserted without the end user having to create a game-specific text editor. To put it another way, abcde lowers the barrier to entry for games with technically complex script encodings (abcde isn't a magic bullet, though - in order to use it effectively on a complex script encoding, you still have to understand how that script encoding really works, which potentially involves quite a lot of work all on its own).

For a specific example of a game that uses some of the new features abcde adds, consider the Japanese NES game Dragon Quest IV: Michibikareshi Monotachi. Dragon Quest IV is a game whose text is largely inaccessible to most general-purpose script extraction or insertion utilities due to several reasons:

- The text is encoded as a sequence of binary strings (tokens) with lengths that are a multiple of 6 bits instead of the usual 8 bits (a.k.a. 1 byte).
- The text encoding is capable of changing mid-string; e.g. within a single string, the meaning of a 0b000001 token can vary between "い", "イ", "「", "です。", and "では　" depending on which table switch tokens have preceded it, possibly many tokens earlier.
- Dictionary (multi-character) entries contain characters which cannot be represented individually; e.g. "＊" only appears in combination with other characters - there is no token that prints only "＊" and nothing else.
- Instead of the usual 1 string per pointer, pointers point to the beginning of a group of strings, and only the first string in a group is necessarily byte-aligned; strings after the first string typically begin on the bit immediately following the final bit of the previous string, but ...
- Dragon Quest IV reserves sections of RAM (or ROM that gets mapped to RAM, depending on your perspective) for other purposes; strings are tightly packed around these reserved sections of RAM and can even cross bank boundaries, e.g. after reading the final bit of RAM $BFD7, which may well occur partway through a token, Dragon Quest IV swaps a different ROM bank into RAM and jumps to a new RAM address to continue reading the rest of the string (in one case, this means that the first few bits of a 6-bit token can be located inside ROM 0x13FD7 but the remaining bits of the token are located inside ROM 0x6E500 - good luck finding that with a relative search :p).

How does abcde make text stored like that accessible? To start with, the table file format has been expanded to allow it to represent bit strings, not just byte strings. The table switching functionality present in some general-purpose extraction utilities (e.g. romjuice) has also been generalized to handle an arbitrary number of table files and control over how switching back and forth between different table files occurs has been improved. At the same time, abcde uses a much more powerful algorithm for deciding how to translate text back into the binary data required by a game, which allows it to insert virtually any text that it can extract. Furthermore, through its Cartographer- and Atlas-style command file interfaces, abcde adds some new extraction and insertion commands to those already established by Cartographer and Atlas.


1.1) History:

Sometime back in 2010, Nightcrawler (a man who needs no introduction), lamenting the interoperability issues caused by every utility author under the sun putting their own unique spin on how table files needed to be structured and what they could and could not be used to accomplish, decided to spearhead a campaign to standardize the table file format. It sounded like a pretty great idea at the time and things appeared to be moving along quite well until some argumentative little git (a.k.a. yours truly) showed up and started poking holes in and proposing amendments to the table file standard's assumptions conditions, and provisions, sufficiently disrupting whatever momentum the campaign had to the point that, eight years later, the end result of the table file standard's noble effort appears to have been a lot of talk but no action. Sorry about that :(

abcde had its genesis in those discussions, starting off as a full implementation of the then current version of the table file standard, and is partly an effort to make good on some of the claims made all those years ago. As is all too common with ROM hacking projects (or maybe it's just me?), abcde's development lifecycle has been intermittent at best, with gaps of weeks, months or even years between those rare and precious hours of spare time with enough desire and mental energy to make some attempt at productivity worthwhile; the rate of progress was probably not helped by having a few other projects to work on at the same time. As I've gone further down the rabbit hole of pitting abcde against the nastiest character encodings I could find that were used in commercially-released games, I've frequently had to go back to the drawing board and revise the assumptions abcde had inherited from the table file standard (some of which I was responsible for adding in the first place!); this is an ongoing process, so none of the features or details of those features that I'll be describing below should be regarded as completely stable at this point in time. As such, abcde is regrettably unable to claim conformance to that table file standard and instead does pretty much the exact opposite, putting its own unique spin on how table files need to be structured and what they can and cannot be used to accomplish. Due to the repeated fundamental design changes abcde has undergone, it's a bit messier than I would like and still has some rough edges that need smoothing out. Despite that, abcde is far enough along that I figure it might be useful to other people, so even though it isn't really finished yet, I'm making it publicly available now rather than continuing to keep it all to myself until it's "done".



2) Dependencies

abcde is written in Perl 5, so you'll need to have perl installed on your system in order to run it; instructions for doing so are beyond the scope of this readme (see e.g. https://www.perl.org/ for details), but if you're using pretty much any non-antique Unix-like system (Macs are Unix-like these days), you probably already have it installed. Windows testing was done using Strawberry Perl.

All other code utilized by abcde (which currently consists of only the Hash::PriorityQueue perl module) is included with abcde for convenience.



3) Synopsis of Table File Syntax

# Table file #1:
# Table files are encoded as UTF-8 text files, and the Byte Order Mark is optional. The text portion of table entries can contain pretty much any Unicode character(s), with a few exceptions:
# a) newlines (as defined by your operating system) are reserved since they're used to delimit table entries from each other;
# b) "<" and ">" are reserved for various purposes including representing untranslated data and delimiting sections of table entries that need to contain multiple pieces of encoding information.
# Any line beginning with "#" (like this one!) is ignored, so you can include your own comments inside the table file, e.g.:
# This is a table file for game X used during situation Y and here's a list of things you should know about when using it: ...

# You can give your table an ID (an ID isn't required if you only have 1 table, but when storing multiple logical tables in the same table file, each logical table must be preceded by an ID):
@main
# Note that providing abcde with multiple tables that have the same ID is considered an error, so don't do that.

# Normal text entries are just what you'd expect, with the left-hand side of the entry specifying a byte in hexadecimal format and the right-hand side specifying what text that byte represents:
04=4
10=あ
# Just in case you weren't expecting it, note that the left-hand side of a table entry is interpreted as big endian (most significant bit/byte to least significant bit/byte), so e.g. AB < BA.

# Table entries can have any positive number of bytes and any non-negative number of characters; bytes can be written in uppercase, lowercase, or any mixture of the two:
01=foo
02=bar
03=cat
80=
ABCD=mouse
0123456789AbCdeF=*

# Since newlines are reserved for delimiting table entries from each other, you can't split a single table entry across multiple lines, but you can use "\n" anywhere in the right-hand side of a table entry to represent a newline:
FE=new\nline
# 0xFE would then be translated to text as:
# new
# line
# Newlines are ignored when translating text into binary, so in the absence of any other usable table entries, each of these texts would be translated to 0xFE:
# ┌──────────┬──────────┬──────────┬──────────┐
# │a)        │b)        │c)        │d)        │
# │new       │new       │newline   │ne        │
# │line      │          │          │wli       │
# │          │          │          │ne        │
# │          │line      │          │          │
# └──────────┴──────────┴──────────┴──────────┘
# etc., etc.

# String end entries are also just what you'd expect, formed by prefixing the left-hand side of a table entry with "/":
/FF=[END]

# Table file entries are no longer limited to matching bytes; now you can match bits by setting the left-hand side of a table entry to a binary string prefixed with "%"
# (mnemonic: binary is made up of 0s and 1s, % sort of looks like 010):
%10=two
%00010=also two
%001001=nine
001001=four thousand ninety seven (note the absence of the % prefix)
%0110=Got Huffman strings? No problem!
/%1111111=[end]
# If you happen to want to match a multiple of 4 bits, you can now also use table entries with an odd number of hex digits:
F=fifteen (matches 4 bits)
abcde=awesome? (matches 20 bits)
# Note that as with hex entries, leading 0s are meaningful for binary entries: in the above example, %10 matches two bits of input while %00010 matches five bits of input.

# Table switch entries are new (and/or improved, depending on what you're already familiar with); this can get a bit complicated, so let's add some more table files and see some examples.
# The table switch entry format looks like this: !lhs=<label>,<@table ID>:matchType,<@table ID>:matchType,<@table ID>:matchType,...
# Where <label> is an optional label for the control code that, if provided, appears in text output,
# <@table ID>: is an optional table ID that will be used to continue matching; if you don't provide a table ID, one of two things will happen:
# * if you don't provide any value here, you get raw hexadecimal-encoded output;
# * if you provide the special value <binary> (note the lack of "@"), you get raw binary-encoded output;
# matchType says how many matches to make in the new table before falling back to the current table:
# * 0 => keep going as long as you can;
# * X => make exactly X matches in the new table, where X is any positive decimal integer;
# * -1 => fall back right away;
# * $hex or %bin => keep going until you match $hex or %bin again (the "$" or "%" are required here so that we can tell whether 10 means ten, sixteen, or two).
# Once the matching condition for the table that was switched into has been satisfied, translation will continue with the table that did the switching.
#
# For table entries that require exactly X matches, the default match counting behaviour is for each matched table entry in the new table to count as 1 match.
# However, different games can count matches in different ways, so abcde provides support for modifying the counting behaviour in a couple of ways:
# * you can change the number of matches a table entry counts as by suffixing the left-hand side of that entry with "<Y>" for any non-negative decimal integer Y; the table entry will then be counted as Y matches instead of 1 match;
# * you can do the same thing with matchType when using $hex or %bin;
# * matchType can be followed by a "+" to indicate that matches in the new table should also contribute towards the number of required matches in the current table.

# Table file #2:
@ItemNames
01=[Potion]
02=[HolyHandGrenadeOfAntioch]
03=[Sword]

# Table file #3:
@FontNames
!01=,<@ItemNames>:1+
02=[Green]
03<2>=[Batman]

# Matching 0xAB 0x01 0x02 0xAB 0x03 using the above tables, starting from @main
# ┌────────────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────────────┐
# │If @main contains:                                              │Then the output is:                                             │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │a normal table entry                                            │                                                                │
# │AB=[line]                                                       │[line]foobar[line]cat                                           │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │table switch with a label,switching to the default raw hex table│                                                                │
# │!AB=<[Item Name:]>,1                                            │[Item Name:]<$01>bar[Item Name:]<$03>                           │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │table switch with a label, switching to a table with an ID      │                                                                │
# │!AB=<[Item Name:]>,<@ItemNames>:1                               │[Item Name:][Potion]bar[Item Name:][Sword]                      │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │in this example, we run out of input before being able to match │                                                                │
# │all of the second 0xAB                                          │                                                                │
# │!AB=<[Item Name/Font:]>,<@ItemNames>:1,<@FontNames>:1           │[Item Name/Font:][Potion][Green]<$AB>cat                        │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │the below two examples are equivalent since 1 + 1 + 1 = 3       │                                                                │
# │!AB=<[Window, X/Y]>,3                                           │[Window, X/Y]<$01><$02><$AB>cat                                 │
# │!AB=<[Window, X/Y]>,1,1,1                                       │[Window, X/Y]<$01><$02><$AB>cat                                 │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │matching 0xAB in @ItemNames causes us to fall back to matching  │                                                                │
# │in the previous table (@main)                                   │                                                                │
# │!AB=<[page]>,<@ItemNames>:$AB                                   │[page][Potion][HolyHandGrenadeOfAntioch]cat                     │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │%10101011 and $AB mean the exact same thing                     │                                                                │
# │!AB=<[page]>,<@ItemNames>:%10101011                             │[page][Potion][HolyHandGrenadeOfAntioch]cat                     │
# ├────────────────────────────────────────────────────────────────┼────────────────────────────────────────────────────────────────┤
# │due to the "+" in @Fontnames 0x01, the 0x02 in @ItemNames counts│                                                                │
# │towards the required 2 matches in @FontNames; due to the "<2>"  │                                                                │
# │in @FontNames 0x03, the 0x03 counts as 2 matches all on its own │                                                                │
# │!AB=,<@FontNames>:2                                             │[HolyHandGrenadeOfAntioch][Batman]                              │
# ├────────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────────┤
# │note that table IDs are case sensitive, so this results in an error about there not being any table with an ID of "iTeMnAmEs"    │
# │!AB=,<@iTeMnAmEs>:0                                             │                                                                │
# ├────────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────────┤
# │note that string end tokens only stop binary-to-text translation for pointer-based extractions,                                  │
# │which is not abcde's default behaviour                          │                                                                │
# │/AB=[end]                                                       │[end]foobar[line]cat                                            │
# ├────────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────────┤
# │with a suitable extraction command file, however, string end tokens work just fine                                               │
# │/AB=[end]                                                       │[end]                                                           │
# ├────────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────────┤
# │it's perfectly possible for a game to use a single control code to trigger multiple things at once, such as switching to another │
# │table and then ending the string on fallback (this example assumes a suitable extraction command file)                           │
# │/!%10101011=<[Item Name:]>,<@ItemNames>:1                       │[Item Name:][Potion]                                            │
# └────────────────────────────────────────────────────────────────┴────────────────────────────────────────────────────────────────┘


# abcde includes support for storing multiple logical tables within the same table file, which is useful if you find yourself with many small translation tables cluttering up your filesystem. To store multiple tables inside the same file, simply ensure that every table is preceded by a table ID, like so:
# Multi-table file:
@table1
A=01
B=02
@table2
A=81
B=82
@table3
A=FACD
B=0000
# etc., etc.

# Some other points that might not be obvious:

# Using the same left-hand side multiple times in the same table file is considered an error, regardless of whether you specify the left-hand side in binary or hexadecimal and regardless of any modifiers like "/" or "!", e.g. if @main also contained:
# %10000000= (conflicts with 80= above since %10000000 and 80 are both the same thing even though they're written differently)
# abcd=mouse (conflicts with ABCD=mouse above since hexadecimal digits are not case sensitive)
# ABCD=mouse (conflicts with ABCD=mouse above even though both lines are completely identical; clean up your table files before giving them to abcde!)
# /0123456789AbCdeF=* (conflicts with 0123456789AbCdeF=* above even though one is a normal entry and one is a string end entry)
# Using the same left-hand side in different table files is okay, though, so any of these entries that generate conflicts in @main could appear in a different table file like @ItemNames.

# Table file #4:
03=[Sword]
02=[HolyHandGrenadeOfAntioch]
01=[Potion]
@ItemNames2
# The order of lines in a table file holds no special meaning for abcde; @ItemNames and @ItemNames2 do exactly the same thing.

# The textual representation of bytes that do not get translated according to any table file looks like <$42>, and untranslated bits look like <%0>.



4) Cartographer Support

Any valid Cartographer command file should also be valid for abcde, but abcde's command file parsing rules, order of execution, and final output are subtly different from Cartographer's; see `abcde -h -cm abcde::Cartographer` for more details.
In addition to fixing several bugs and making a few design decisions differently, abcde adds or extends the following commands:

#ATLAS PTRS:	Further to Cartographer's usual behaviour, setting #ATLAS PTRS to "Yes" will cause abcde to generate Atlas commands for activating the table specified by the current block's #TABLE command, jumping the insertion point to the start of the extraction point, and updating the RAM-to-ROM offset value based on the current block's #BASE POINTER value, if any. Additionally, if #ATLAS PTRS is set to "Yes" in any block, abcde will output Atlas commands for loading all of the same table files that were loaded during extraction. Note that the #ATLAS PTRS command can be included even in blocks using #METHOD: RAW.


#AUTO JUMP START:	Specifies the starting address of an auto-jump.
#AUTO JUMP STOP:	Specifies the destination address of an auto-jump.
When dumping a block that contains an auto-jump, attempting to read the byte address specified by #AUTO JUMP START will instead read the address specified by #AUTO JUMP STOP and dumping will continue from that point. If either of these commands is present in a block, both commands must be present or else an error will be generated.
(This command is how you can deal with extracting discontinuous strings like in the Dragon Quest IV example where the data being read from ROM $13FD7 is continued at ROM $6E500.)


#COMMENTS:	Both
An alternate output format where the script is output twice, once commented and once uncommented, like so, reflecting my personal preference:
//string 1 line 1[line]
//string 1 line 2[end]
string 1 line 1[line]
string 1 line 2[end]

//string 2 line 1[line]
//string 2 line 2[end]
string 2 line 1[line]
string 2 line 2[end]


#SCRIPT STOP:	This option is now available for all #METHOD values, not just RAW. If set for one of the POINTER methods, string translation will stop when reaching the #SCRIPT STOP value or when an end token is encountered, whichever comes first.
(This is useful when you want to extract one or more strings together with their pointers but the ending conditions for each string are difficult or impossible to represent via other means; see Dragon Warrior II's menus for an example.)


#SHOW END ADDRESS:	If set to Yes, abcde will include the current ROM address in a comment following each string.
		Yes or No option only; defaults to Yes.


#SORT OUTPUT BY STRING ADDRESS:	Normally Cartographer outputs strings sorted by their pointers' addresses; setting this option to Yes sorts the strings by the strings' addresses instead
		Yes or No option only; defaults to No.


#STRING END REALIGN MULTIPLE:
#STRING END REALIGN OFFSET:	Defaults to 0.
If #STRING END REALIGN MULTIPLE is set to a positive integer value, then whenever a string end token is encountered, the read address will be advanced to the nearest multiple of #STRING END REALIGN MULTIPLE bytes, skipping over any intervening data, so this is kind of like a mini-auto-jump. E.g. if the block contains #STRING END REALIGN MULTIPLE: 14, #STRING END REALIGN OFFSET 10, and a string end token is matched that terminates at address 0x12345, instead of the next read address being 0x12346 as usual, we instead jump ahead to 0x1234E (0x12346 - 10 = 0x12336; ceiling(0x12336 / 14) * 14 = 0x12344; 0x12344 + 10 = 0x1234E). If the string end token had instead terminated at 0x1234D, the next read address would have been 0x1234E anyway, so no further jumping occurs.
(This command is how you can deal with extracting strings from games that mix byte- and bit-oriented data structures within the same string like in the Battle of Olympus example below where there's a gap of several bits between the end of one 5-bit string and the start of the next byte-aligned function index.)


#STRINGS END AT NEXT POINTER:	Normally Cartographer continues translating a string until it reaches an end token; setting this option to Yes causes string translation to continue until the next pointer in the current pointer table is reached. One notable consequence of this that still applies to end-token-terminated strings is that if two adjacent pointers point to the same string, the first pointer will have its string length calculated as 0, which effectively eliminates runs of duplicate strings from the output; this property synergizes well with #SORT OUTPUT BY STRING ADDRESS: Yes.
		Yes or No option only; defaults to No.


#STRINGS PER POINTER:	Specifies the number of end tokens that must be matched in one pointer's string before moving to the next pointer's string. Defaults to 1. Attempting to use this in combination with #METHOD: RAW makes no sense and will generate an error.
(This command is how you can deal with extracting strings that are part of a group of strings that only have a pointer to the first string in the group like in the Dragon Quest IV example.)


#SUB TABLE:	The filename of an additional table to be available for use when dumping the script. Unlike other commands, #SUB TABLE commands apply to the entire command file, not just the current block. This command can be repeated as many times as necessary to load tables that are never the starting table (#TABLE) of any block but are the target of some table switch entry. This has the same effect as supplying the table filename in abcde's <general options> on the main command line.


#TABLE ID:	Allows you to specify the starting table for the current block by ID instead of filename.


#TRIM TRAILING NEWLINES:	If set to Yes, trailing newlines at the end of each string will not be output.
		Yes or No option only; defaults to Yes.



5) Atlas Support

abcde expands Atlas' command line to allow passing multiple script files which will be processed independently in the order provided.

Most valid Atlas command files should also be valid for abcde, but abcde's command file parsing rules, order of execution, and final output are subtly different from Atlas'; see `abcde -h -cm abcde::Atlas` for more details.
The primary incompatibility with Atlas command files lies in abcde's lack of support for Atlas extensions; the extension commands themselves are recognized, but abcde isn't going to call your extension's code, and will instead emit a warning about extension commands being unsupported as a reminder not to rely on whatever functionality the extension was supposed to provide.
In addition to fixing several bugs and making a few design decisions differently, abcde adds or extends the following commands:

ADDTBL(string TblFileName, table TableId)
	When storing multiple logical tables inside the same table file, only the first table inside TblFileName will be associated with TableId.

ACTIVETBL(string TableId)
	Passing a string TableId will activate a table by its ID (as opposed to the existing ACTIVETBL(table TableId) form, which requires every table to be in its own file). E.g. #ACTIVETBL("@foo") will activate the @foo table.

AUTOCMD(number Address, string Command)
	During text insertion, when the current position reaches the start of Address, the Atlas command specified by Command will be run prior to inserting the text.

	Address - The address at which to execute the Command
	Command - The command to execute when reaching Address

You can specify AUTOCMD multiple times for the same Address (they are executed in the order you specify them), and you can use any Atlas command including another AUTCMD (new AUTOCMD commands are executed after any previously specified AUTOCMD commands). After the AUTOCMD executes, it is removed from the list of active AUTOCMDs, so you don't even have to worry about creating an infinite JMP loop. This is pretty potent stuff.
(This command is how you can deal with inserting discontinuous strings like in the Dragon Quest IV example where the data being written to ROM $13FD7 must be continued at ROM $6E500.)

abcde introduces a new VAR type, CALCVAR. A calculated variable is an integer whose value is the result of evaluating a mathematical expression via the new CALC command. Every Atlas command that accepts a number has been expanded to treat a CALCVAR as a number. Furthermore, the W8, W16, W24, W32, WBB, WHB, WHW, WLB, WUB, and WRITE commands have all been expanded to accept a CALCVAR in place of a CUSTOMPOINTER and will use the CALCVAR's value as the value to write to the given address.

CALC(calcvar Var, string Expr)
	Evaluates the mathematical expression Expr and saves the result in variable Var. Decimal ([0-9]), hexadecimal ("$" + [0-9A-Fa-f]), and binary ("%" + [01]) numeric values, basic arithmetic ([+-/*()]), bitwise ([&|^], logical ("&&", "||"), comparison ("<", ">", "<=", ">=", "=="), and ternary if/then/else (<if> + "?" + <then> + ":" + <else>) operators are all supported. Additionally, any CalcVars defined at the time of expression evaluation (!Var) can have their current value interpolated into the expression. The following read-only variable is predefined and is automatically updated to always reflect the current insertion state:
		CURRENT_ADDRESS:	The file address of the current insertion position.
	Note that all CalcVars used in Expr must be defined at the time of expression evaluation.

CONTINUOUSFILE(boolean Continuous)
	When passing multiple script files on the command line, setting Continuous to TRUE will maintain the current file's insertion state when starting the next file. Continuous is automatically reset to FALSE before processing each file.
	Values: "TRUE", "FALSE"

*** DEPRECATION NOTICE: the functionaly provided by COUNTERs has been superceded by the introduction of CALCVARs in abcde v0.0.9; COUNTER variables and the CREATECTR and INC commands will likely be removed in a future version.
abcde introduces a new VAR type, COUNTER. A counter is just an integer that you can increment via the new INC command, and this integer can be written to the pointer file just like a pointer (the VAR, W16, W24, W32, WBB, WHB, WHW, WLB, WUB, and WRITE commands have all been expanded to accept a COUNTER in place of a CUSTOMPOINTER and will use the CALCVAR's value as the value to write to the given address).
(In the Dragon Quest IV example, these commands in combination with AUTOCMD are how you can update the table that lets Dragon Quest IV know how many text pointers are in each ROM bank.)

CREATECTR(counter Ctr, number Size, number Value)
	Creates a counter.

	Ctr - Name of the counter to create
	Size - Size of the counter in bits
	Value - Initial value for the counter, must be an integer

INC(counter Ctr, number Amount)
	Increments a counter.

	Ctr - The name of the counter to increment
	Amount - The amount to increment by, must be an integer

PASCALTYPE(string PascalType)
	Controls how the length of Pascal strings is calculated. Default is BYTES.

	PascalType - "BYTES" or "TOKENS"

Atlas normally determines the length of a Pascal string by counting the number of bytes in that string, but now you can count the number of tokens (actually the number of matches including match count alterations specified by suffixing the left-hand side of a table entry with "<Y>" for any non-negative decimal integer Y; see the Synopsis of Table File Syntax above) in that string instead.
(This command is how you can deal with games that count string lengths in tokens rather than bytes like in the Battle of Olympus example below.)

PRINT(calcvar Var, number Size)
	Inserts the low Size bits of Var into the target file at the current address.

READ(calcvar Var, number Address)
	Reads one byte of data (interpreted as an unsigned integer) from offset Address within the target file into Var.

SKIP(number Offsetting)
	Changes the current position for text insertion.

	Offsetting - Number of bytes to add to current file position

Like JMP, SKIP updates the current insert position, but instead of setting the new insert position to the given target file offset (which necessarily must be known beforehand), the new insert position becomes the old insert position + the value of the (possibly negative) Offsetting parameter. I guess it could be useful for a bunch of things, but it was added as a hack for the current incompatibility of the text-to-binary algorithm's need to match full tokens and the embedded pointer syntax's need to reserve space not included in any other token.

W8(optional custompointer Ptr, number Address)
	Writes an 8bit pointer to Address. If a custompointer is provided, it will be used for calculation.

abcde also expands the list of available AddressType values (used by CREATEPTR, EMBTYPE, and SMA) to include the new POINTER_RELATIVE value. Unlike the existing AddressType values which all take the current insert position (or for EMBSET, the position defined by the corresponding EMBWRITE) and modify it based on hard-coded values (e.g. HIROM just adds 0xC00000), POINTER_RELATIVE takes the current insert position (or for EMBSET, the position defined by the corresponding EMBWRITE) and subtracts the address of the pointer being written.
(Embedded pointers using the POINTER_RELATIVE address type are how you can deal with "skip Y bytes" instructions like in the Battle of Olympus example below.)



6) Customization Support

While abcde is capable of handling some fairly advanced script encodings, there is a whole lot of crazy stuff running around out there in the wild, and even with the new features described above, abcde won't be able to handle all of it. If you find yourself dealing with something that abcde can't handle, you might still need to write your own custom game-specific code, but since abcde is open source and is really just a bunch of text files that get run through perl, if you can edit text files and run perl, then you can change how abcde works and use it as a base for whatever customizations you need to make.

6.1) Extracting Embedded Pointer Text

One of the situations that will require customization is extracting embedded pointers. For an example of a game that uses embedded pointers, let's take a look at the English NES game Battle of Olympus. As a quick overview of Battle of Olympus's script engine, the data that pointers point to isn't text, but is instead a series of indexes (or indices if you prefer) into a function jump table, with each function consuming a certain number of the following bytes of data as parameters. The function indexes themselves and most of the function parameters are interpreted as bytes, but displayable text is encoded as a Pascal string with one byte specifying the string length in number of tokens (NOT bytes) followed by a sequence of 5-bit tokens, with some tokens acting as switches between uppercase, lowercase, and numbers/punctuation tables. Only 4 of the 16 functions end up printing text to the screen; the other functions consist of various commands for testing variables, setting variables, exiting the script engine, and a form of branching via updating which address the script engine will read next - otherwise known as an embedded pointer. Here's a sample embedded pointer in action, using the tables provided in abcde's "eg/NES/Battle of Olympus" directory:

[NPC:][Old bald man with white beard and staff]
[if flag X is not set, skip Y bytes][flag: Zeus met][bytes: $16]
// display this if you've already talked to Zeus:
[Dialogue:]
[HERO],[LINE]
don't be discouraged!
// end of displayed text

// display this if you haven't talked to Zeus yet:
[Dialogue:]
[HERO], first you must[LINE]
go to the Temple of[LINE]
Arcadia to meet Zeus.
// end of displayed text

Generating text that represents the testing and setting of variables can be accomplished easily enough via table switching, but the branching required to follow an embedded pointer or to extract both the "if" part and the "else" part (or parts, in the case of more complex functions) of a conditional statement can't be handled using just a table file (at least not without incorporating a whole lot of other things into the concept of a table file, such as a memory model and syntax for interacting with that memory model; I don't know about you, but that's something I'd prefer to avoid). During insertion, embedded pointers can be handled via Atlas' existing embedded pointer commands, but an extraction utility with complementary functionality is harder to find. You'll need to write your own code to handle whatever embedded pointers your game uses, and directions on how to do so are beyond the scope of this readme, but abcde does ship with the abcde::Cartographer::NES::Battle_of_Olympus command module that might prove useful as an example to start from when doing so.



7) Improved Text-To-Binary Algorithm

Even if you aren't using any of the new table file or command file features, abcde implements a powerful text-to-binary translation algorithm which for the given table files and text input, produces the smallest possible binary that can be translated back into the original text input according to the provided table files (if your table files do not accurately represent the game's text encoding, all bets are off). Unlike the longest-prefix text-to-binary algorithm employed by many insertion utilities, abcde uses a variant on the A* graph search algorithm to find a lowest-binary-cost path representing the text input that satisfies the constraints of the longest-prefix binary-to-text translation algorithm. The good news is that (barring implementation bugs) the output of the text-to-binary translation will be the shortest possible for single-table or multi-table encodings, but the bad news is that A* is a moderately complicated breadth-first search algorithm, so it generally takes much longer to find an encoding than the dead simple (but potentially incorrect and/or sub-optimal) depth-first longest-prefix algorithm. Add to that that abcde is written as an interpreted perl script as opposed to a pre-compiled and heavily optimized executable and you might have to wait a little bit before you get your shiny binary to come out.

The amount your project will benefit from abcde's improved algorithm is highly variable, but in general the more table entries your game uses that represent more than two characters, the more likely you are to save space using abcde compared to another insertion utility that uses a longest-prefix text-to-binary algorithm. In some cases, abcde can even be used to re-encode text in a more compact form than the original developers used, so even if you aren't making visible text changes in your project, you might enjoy using any space abcde is able to free up for other things. As an example of this, abcde is able to re-encode Dragon Quest IV's main script using 522 fewer bytes than were required by the original ROM; you can do quite a lot with an extra half-kilobyte of free space :)



8) A Note About UTF-8

Note that any text input to abcde must be encoded as UTF-8, and any text output from abcde will be encoded as UTF-8. In addition to the command line, STDIN (during text-to-binary translation), STDOUT (during binary-to-text translation), and STDERR, this includes all table files and command files and all output files generated by abcde. Most of the time this should just work, but if your system and/or favourite text editor(s) are configured to expect text in some other encoding, you may need to manually specify UTF-8 when working with abcde (on Windows cmd, you can try "chcp 65001", on Unix-like systems you can try e.g. "export LC_ALL=en_US.UTF-8", on a Mac RDP connection to a Windows box running MinGW that ssh's to a Linux box running Notepad under wine, sorry but you're on your own there).

In case it isn't obvious, this does not include the ROM file, STDIN (during binary-to-text translation), or STDOUT (during text-to-binary translation), which are all treated as binary rather than text.



9) Future Plans

abcde has come a long way since its inception, but it still has a long way to go before it becomes the tool I want it to be. Items on the to-do list include (in no particular order):
- further expanding the table file switch entry syntax (e.g. removing limiting features like only being able to fall back on one token instead of a list of tokens);
- cleaner Cartographer dumps (e.g. condensing duplicate pointers instead of dumping the text they point to multiple times);
- adding the ability to sort Cartographer output by string address across blocks (in order to make it easier to test Atlas insertions by comparing the original and modified ROMs);
- adding better/more user-friendly debug info;
- multi-language support;
- code cleanup/optimization (I doubt I'll get ambitious enough to rewrite all this in C/C++, but the performance improvements would likely be substantial);
- and a bunch of other stuff that escapes my mind at the moment :p



10) Thanks

- to AWJ for providing a wealth of helpful information about Dragon Quest IV;
- to Chicken Knife for playing the role of guinea pig and providing useful feedback to help decrease the crappiness of my UI;
- to Klarth for developing and releasing Atlas (with source code!);
- to Nightcrawler for opening discussions about standardizing the table file format;
- to RedComet for developing and releasing Cartographer;
- to Tauwasser for suggesting the A* algorithm as the basis of a workable multi-table insertion algorithm;
- to the rhdn community (which probably includes you!) for many reasons.



11) Contact

Fan mail, questions, comments, insults, suggestions and the like can all be sent to tempestas.caput@gmail.com where they will almost certainly all be read (unless they get filtered as spam). That said, I have been known to go for months without checking my mail, so don't be upset if you don't receive a response in a timely manner :p



12) Version History
0.0.9 (2020-08-27):
Various bugfixes and improvements including but not limited to:
- allowing #ATLAS PTRS in abcde::Cartographer blocks with #METHOD: RAW;
- adding #CALC and friends to abcde::Atlas;
- deprecating COUNTER vars and the CREATECTR and INC abcde::Atlas commands;
- adding more abcde::Cartographer output formatting commands; in simple cases it is now sometimes possible to use the unaltered abcde::Cartographer output as a complete Atlas command file.

0.0.8 (2020-05-10):
Various bugfixes and improvements including but not limited to:
- adding support for odd-length hex table entries;
- fixing #AUTOWRITE issues when used in combination with #FIXEDLENGTH or other #AUTOWRITE commands.

0.0.7 (2020-04-12):
Various bugfixes and improvements including but not limited to:
- allowing abcde::Atlas to accept multiple command files at once;
- adding more abcde::Cartographer output formatting commands;
- adding options to affect resolution of relative paths in file names.
Breaking change: abcde::Atlas and abcde::Cartographer now default to using the current directory for relative paths just like Atlas and Cartographer.

0.0.6 (2020-01-28):
Various bugfixes and improvements including but not limited to:
- adding #W8 abcde::Atlas command;
- fixing abcde::Atlas requiring tables to be loaded on the command line;
- making abcde::Cartographer output more Atlas commands.

0.0.5 (2019-09-01):
Various bugfixes and improvements including but not limited to:
- defaulting to applying Unicode normalizations NFD/NFC to text input/output;
- adding support for multiple logical tables per table file;
- making it possible to specify whether you want to match against bits or bytes when switching to the default table.

0.0.4 (2019-04-19):
Various bugfixes and improvements including but not limited to:
- added #SUB TABLE abcde::Cartographer command;
- now accepting both -$hex and $-hex for negative hexadecimal values.
Breaking changes:
- switched representation of raw bit tokens from e.g. <$0> to <%0>;
- changed behaviour of abcde::Cartographer's #TYPE: FIXED_STRING && FIXED_LINE to hopefully make more sense.

0.0.3 (2019-01-07):
Various bugfixes and improvements.
Breaking change (internal): the abcde::Cartographer perl module got refactored a bit and some method signatures changed.

0.0.2 (2018-09-08):
Various bugfixes, optimizations, and improvements.
Breaking change: reserved characters changed from [] to <> for better compatibility with the raw hex representation used by Atlas and Cartographer.

0.0.1 (2018-03-10):
Initial release.
