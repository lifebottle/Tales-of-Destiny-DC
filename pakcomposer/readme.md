# Pakcomposer Clone
The original Pakcomposer tool was de-compiled into C# code and was rebuilt.
This tool is used to extract files from pak0, pak1, pak3 found in TOD_DC.
To use this tool, you will also need to compile `comptoe.exe` from soywiz:  
https://github.com/talestra/talestra/tree/master/compto  


## Compile Pakcomposer Clone
1. Clone this repository
2. Download and install Visual Studio (2019) Community Edition
3. During install, make sure to check .NET Framework 3.5 SDK (not sure if needed)
4. Open `pakcomposer.sln` in Visual Studio and Build Solution `CTRL+SHIFT+B`
5. Pick Debug/Release accordingly when you build the solution
6. Check the output at the bottom to find `pakcomposer.exe`
7. Run `pakcomposer.exe` in a terminal to get commands to unpack and pack


## Compile comptoe.exe
1. Clone this repository: https://github.com/talestra/talestra/tree/master/compto
2. Download and extract Tiny C Compile (tcc.exe): http://download.savannah.gnu.org/releases/tinycc
3. Open a terminal: `tcc.exe complib.c compto.c -o comptoe.exe` to compile `comptoe.exe`
4. You may get some errors like `warning: __declspec redefined` ignore this for now
5. Download and extract upx.exe: https://github.com/upx/upx/releases/tag/v3.96
6. Open a terminal: `upx.exe comptoe.exe` This just packs the comptoe.exe file to make it smaller
7. Copy `comptoe.exe` to the same directory of the `pakcomposer.exe`