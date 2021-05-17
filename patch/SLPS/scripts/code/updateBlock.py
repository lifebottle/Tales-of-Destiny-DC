from HelperfunctionsNew import *
import sys
import os

if __name__ == "__main__":
    
    blockDesc = sys.argv[1]
    
    
    helper = Helper()
    
    if blockDesc in ["Skit Name", "Synopsis"]:
        helper.createBlock_Multi(blockDesc)
        
    elif blockDesc != "All":
        
        print("\nWhat's inside this block :")
        helper.showSections(blockDesc)
        
        print("Create the script based on google sheet")
        helper.createAtlasScript_Block(blockDesc)
        
        
        print("Create the SLPS for this block")
        helper.reinsertText_Block(blockDesc)
    else:
        
        helper.createAtlasScript_All()
        
        print("Create the SLPS for this block")
        helper.reinsertText_All(blockDesc)