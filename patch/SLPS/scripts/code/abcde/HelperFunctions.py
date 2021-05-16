import os
import sys
from os.path import join
import pandas as pd
import itertools
import ntpath
from tempfile import mkstemp
from shutil import move, copymode
from os import fdopen, remove
import shutil
import subprocess
import binascii

def clean(dumpFile):
    
    pathFile = os.path.abspath(os.path.dirname(__file__))
    f = open(os.path.join(pathFile,dumpFile), mode="r", encoding="utf-8")
    destFile = open(os.path.join(pathFile,dumpFile.replace(".txt","")+"_cleaned.txt"), mode="w", encoding="utf-8")
    for line in f:
        if "#JMP(" not in line:
            line = line.replace("#HDR($-FF000) // Difference between ROM and RAM addresses for pointer value calculations","")
            line = line.replace("#ACTIVETBL(Table_0) // Activate this block's starting TABLE","")
            line = line.replace("#W32(","#WRITE(ptr,")
            if "//BLOCK #" in line:
                line = ""
            if "//POINTER " in line:
                line = "//Text "+line.split(" ")[-1]
                
            #if "<$81>@" in line:
            #    line = line.replace("<$81>@"," ")
            destFile.write(line)
        
    f.close()
    destFile.close()
    removeBlankPointerData(dumpFile.replace(".txt","")+"_cleaned.txt")
    os.remove(dumpFile)
    
def runscript(file):
    
    args = ["perl", "abcde.pl", "-m", "bin2text", "-cm", "abcde::Cartographer", "SLPS_254.50_original", file+"_script.txt", file+"_dump", "-s"]
    listFile = subprocess.run(
        args,
        cwd= os.path.abspath(os.path.dirname(__file__)),
        )
    
def findall(text, textToFind):

    i = text.find(textToFind)
    while i != -1:
        yield i
        i = text.find(textToFind, i+1)
        
def replace(file_path, pattern, subst):
    #Create temp file
    fh, abs_path = mkstemp()

    with open(file_path, "r") as old_file:
        for line in old_file:
            print(line)
            if "#JMP(" in line:
                pos = line.find(',')
                print(line[0:(pos-1)])
                    #new_file.write(line.replace(pattern, subst))
    #Copy the file permissions from the old file to the new file
    #copymode(file_path, abs_path)
    
    #Remove original file
    #remove(file_path)
    
    #Move new file
    #move(abs_path, file_path)

def removeBlankPointerData(fileName):
    
    path = os.path.abspath(os.path.dirname(__file__))
    fread = open(os.path.join(path, fileName),encoding="utf-8", mode="r")
    fwrite = open(os.path.join(path,"w"+fileName),encoding="utf-8", mode="w")
    
    lines = fread.readlines()
    indexStart = [i for i,line in enumerate(lines) if "FFFFFFFFFFF01000" in line] 
    indexComp = [list(range(i,i+5)) for i in indexStart]
    indexComp = list(itertools.chain.from_iterable(indexComp))
    
    for i,line in enumerate(lines):
        if i not in indexComp:
            
            fwrite.write(line)
            
    fread.close()
    fwrite.close()
    
   
    shutil.copyfile( os.path.join(path,"w"+fileName), os.path.join(path,fileName))
    remove( os.path.join(path, "w"+fileName ))
    
    
def createScript(fileName, n, startPoint, step, nbObject):
    
    blockText = """
#BLOCK NAME:	Artes_{}
#TYPE:		NORMAL
#METHOD:		          POINTER_RELATIVE
#POINTER ENDIAN:		LITTLE
#POINTER TABLE START:	${}
#POINTER TABLE STOP:	${}
#POINTER SIZE:		$04
#POINTER SPACE:		$00
#ATLAS PTRS:		Yes
#BASE POINTER:		$-FF000		//add $FF000 to each pointer to get
#TABLE:			ToR.tbl	//the string address
#COMMENTS:		No
#END BLOCK
"""

    pathFile = os.path.abspath(os.path.dirname(__file__))
    with open(os.path.join(pathFile,fileName), "w") as f:
        f.write("#GAME NAME:			Tales Of Rebirth")
        
        for x in range(n):
            
            start = hex(int(startPoint,16) + x*step)[2:].upper()
            end   = hex(int(startPoint,16) + 4*nbObject-1 + x*step)[2:].upper()
            f.write(blockText.format(x+1, start, end))
