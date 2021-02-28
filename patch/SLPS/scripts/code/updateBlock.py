from Helperfunctions import *
import sys
import os

if __name__ == "__main__":
    
    blockId = sys.argv[1]
    print("Block: {}".format(blockId))
    
    slpsName = sys.argv[2]
    print("Name: {}".format(slpsName))
    
    print("Create the script based on google sheet")
    createAtlasScript_Block(blockId)
    
    
    print("Create the SLPS for this block")
    reinsertText_Block(blockId, slpsName)