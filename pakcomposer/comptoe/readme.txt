# Source
COMPLIB and COMPTOE by Carlos Ballesteros Velasco - soywiz
This pack is part of the Tales of Eternia Spanish translation project.

	- http://www.soywiz.com/
	- http://www.tales-tra.com/

## Information
`comptoe.exe` packs and unpack raws and compressed files of Tales of Eternia, both versions 1 and 3.
(Probably means `.PAK1` and `.PAK3` files)

This is compatible with other "Tales of" games for PSX/PSP/PS2, for example:
- Destiny DC
- Phantasia
- Destiny 2
- Abyss

## Compile Instructions
1. Download Tiny C Compiler from http://download.savannah.gnu.org/releases/tinycc/
1. Open a terminal and enter `tcc.exe -complib.c -comptoe.c -o comptoe.exe`
1. Optional: Download Ultimate Packer for eXecutables: https://upx.github.io/
1. Open a terminal and enter `upx.exe comptoe.exe` to make the file smaller
