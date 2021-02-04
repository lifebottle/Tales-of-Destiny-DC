import os
from os.path import join
import pandas as pd
import itertools
import ntpath

def read_from_hex_offset(fileIte, hex_offset):
    """Fetch a single byte (or character) from file at hexadecimal offset hex_offset"""

    with open(fileIte, "r+b") as f:
        offset = int(hex_offset, base=16)
     
        f.seek(offset)
        char = f.read(1)
        if char == b'\x24':
            char = b'\x30'
            print(fileIte)
            f.seek(offset)
            f.write(char)

        f.close()

hex_search = '00000004'
pathPAK1 = os.path.abspath( os.path.join(os.path.dirname(__file__), 'DAT','PAK1'))
listFiles = os.listdir(pathPAK1)
listFilesWithPath = [os.path.join(pathPAK1, file) for file in listFiles]

for file in listFilesWithPath:
    read_from_hex_offset(file, hex_search)


#For test on one file
#file = '01792.pak1'
#read_from_hex_offset( os.path.join(pathPAK1,file), hex_search)
