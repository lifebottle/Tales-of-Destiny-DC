from HelperfunctionsNew import *
import sys
import os

if __name__ == "__main__":
    
    blockId = sys.argv[1]
    slpsName = sys.argv[2]
    
    helper = Helper()
    print("\nWhat's inside this block :")
    helper.showSections(blockId)
    
    print("Create the script based on google sheet")
    helper.createAtlasScript_Block(blockId)
    
    
    print("Create the SLPS for this block")
    helper.reinsertText_Block(blockId, slpsName)