# DestinyRemake

## Source
All source code was copied from https://github.com/AdmiralCurtiss/HyoutaTools and modified to remove anything unrelated to Tales of Destiny DC.
As well, icon was added to make the executable look cool.

## Compile Instructions
1. Open `DestinyRemake.sln` and build the solution, easy as that!

## Usage Instructions
1. `DestinyRemake.exe` to see available options
1. `DestinyRemake.exe Tales.DestinyRemake.TblBin.Extract DAT.TBL DAT.BIN` to extract all files from `DAT.BIN`
1. This is basically equivalent to `ToDDCTools_v1.1.exe unpack DAT.BIN DAT.TBL` but with no extensions or folder organization.  
1. `DestinyRemake.exe Tales.DestinyRemake.MglkExtract.Extract .\DAT.BIN.ex\0#####` to extract .sce file from MGLK file.
1. This is equivalent to `ToDDCTools_v1.1.exe unmglk #####` + `comptoe.exe -d1 0#####.sce #####.rsce`

## Next Steps
1. Need to update DestinyRemake.exe to `REPACK` files back into DAT.BIN and DAT.TBL
1. Need `Tales.DestinyRemake.TblBin.Extract` to add extension to files and organize into folders
1. Need `Tales.DestinyRemake.MglkExtract.Extract` to also extract everything from MGLK files, not just SCE
1. Need `Tales.DestinyRemake.MglkExtract.Extract` to also use `comptoe.exe` to create RSCE files
1. Need to update DestinyRemake.exe to `REPACK` MGLK files
