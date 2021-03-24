from HelperfunctionsNew import *
import sys
import os

if __name__ == "__main__":
    
    blockId = sys.argv[1]
    
    
    helper = Helper()
    
    if blockId != "All":
        
        slpsName = sys.argv[2]
        print("\nWhat's inside this block :")
        helper.showSections(blockId)
        
        print("Create the script based on google sheet")
        helper.createAtlasScript_Block(blockId)
        
        
        print("Create the SLPS for this block")
        helper.reinsertText_Block(blockId, slpsName)
    else:
        
        helper.createAtlasScript_All()
        
        print("Create the SLPS for this block")
        helper.reinsertText_All(blockId)