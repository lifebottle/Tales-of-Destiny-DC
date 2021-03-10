import os.path
import json
import subprocess
import shutil
import itertools
import pandas as pd
import pygsheets
import re

def showSections(blockId):
    
    f = open(os.path.join(os.path.abspath(os.path.dirname(__file__)),"sectionsSLPS.json"))
    data = json.load(f)
    dataItems = data['items']
    
    blockSections = [ele['Sections'] for ele in dataItems if ele['BlockId'] == int(blockId)][0]
    sectionsInfos = [ [ele['SectionId'], ele['SectionDesc']] for ele in blockSections]
    
    #Print the sections on the screen
    for sectionId, sectionDesc in sectionsInfos:
        print("{}. {}".format(sectionId, sectionDesc))
    print("\n")
    input("Press Enter to continue")

def parseText(fileName):
    
    fread = open(os.path.join(os.getcwd(),"abcde", fileName),encoding="utf-8", mode="r")
    lines = fread.readlines()
    
    start=0
    end=0
    mylist=[]
    dfLines = pd.DataFrame(lines, columns=["Text"])
    finalList=[]
    
    for i,line in enumerate(lines):
        
        if "//Text " in line:
            start=i
        if "// current" in line:    
            finalList.append("".join(dfLines['Text'][start:i]))
    
    return finalList

def writeColumn(finalList, googleId):
    
    gc = pygsheets.authorize(service_file='gsheet.json')
    sh = gc.open_by_key(googleId)

    #Look for Dump sheet 
    wks = sh.worksheet('title','Dump')
    
    
    #update the first sheet with df, starting at cell B2. 
    df=pd.DataFrame({"Japanese":finalList, "English":finalList})
    wks.set_dataframe(df,(1,0))
    
def getGoogleSheetTranslation(gc, googlesheetId, sheetName):
    
    sh = gc.open_by_key(googlesheetId)
    sheets = sh.worksheets()
    
    idSheet = [ ele.index for ele in sheets if sheetName in ele.title ][0]
    if idSheet != None:
        wks = sh[idSheet]
        
        df = pd.DataFrame(wks.get_all_records())
        
        #with open("test.txt",encoding="utf-8", mode="w") as f:
        #    f.write(translationsText)
        return df
    else:
        print("Cannot find the sheet name in the google sheet")
        return "No"
    


def removeBlankPointerData(fileName):
    print(fileName)
    fread = open(os.path.join(os.getcwd(),"abcde", fileName),encoding="utf-8", mode="r")
    fwrite = open(os.path.join(os.getcwd(),"abcde", "w"+fileName),encoding="utf-8", mode="w")
    
    lines = fread.readlines()
    indexStart = [i for i,line in enumerate(lines) if "FFFFFFFFFFF01000" in line] 
    indexComp = [list(range(i,i+5)) for i in indexStart]
    indexComp = list(itertools.chain.from_iterable(indexComp))
    
    for i,line in enumerate(lines):
        if i not in indexComp:
            
            fwrite.write(line)
            
    fread.close()
    fwrite.close()
    
    path = r"F:\PythonCode\TOD_GoogleDoc"
    shutil.copyfile( os.path.join(path, "abcde","w"+fileName), os.path.join(path, "abcde",fileName))
    
def getHeader(pathTable):
    headerTxt="""#VAR(Table_0, TABLE)
#ADDTBL("{}", Table_0)

//BLOCK #000 NAME:
#ACTIVETBL(Table_0) // Activate this block's starting TABLE
#VAR(ptr, CUSTOMPOINTER)
#CREATEPTR(ptr, "LINEAR", $-FF000, 32)

""".format(pathTable)
    
    
    return headerTxt

def loadTable():
    path = r"G:\TalesHacking\TOD\GitProject\Tales-of-Destiny-DC\patch\SLPS\scripts\code"

    
    with open(os.path.join(path, "abcde", "toddc.tbl"), encoding="utf-8", mode="r") as tblfile:
        lines=tblfile.readlines()
        
    df = pd.DataFrame(lines, columns=['Value'])
    
    df['Value'] = [re.sub(r'\n$', '', ele) for ele in  df['Value']]
    df['Split'] = df['Value'].str.split("=")
    df['Hex']   = df['Split'].apply(lambda x: x[0])
    #df['Text']  = df['Split'].apply(lambda x: x[-1])
    df['Text']  = df['Split'].apply(lambda x: x[-1].replace("[END]\\n","[END]").replace("\\n","\n"))
    df.loc[ df['Text'] == "", 'Text'] = "="
    df.loc[ df['Hex'] == "/00","Hex"] = "00"
    
    df['NbChar']= df['Text'].apply(lambda x: len(x))
    listKeys = df['Text'].tolist()
    listValue = df['Hex'].tolist()
    mydict = {listKeys[i]: listValue[i] for i in range(len(listKeys))} 
    keys = keys=sorted(list(mydict.keys()),key=lambda x: len(x))[::-1]
    return mydict, keys

def findall(p, s):
    '''Yields all the positions of
    the pattern p in the string s.'''
    i = s.find(p)
    while i != -1:
        yield i
        i = s.find(p, i+1)
        
    
def countBytes(keys, mappingTbl, text):
    
    out=[]
    text="Paralyze foes within range.[LINE]\n(Rolling Rs required)[END]\n"

    base=text
    for k in keys:
           
        if k in base:
            
            #nb = len(re.findall(k.replace("?","\?").replace("[","\["), v))
            nb = len([i for i in findall(k, base)])
      
            
            base=base.replace(k,'')
            print(base)
            out.append(mappingTbl[k]*nb)
            
    res = len("".join(out))/2
    
    return res

def cleanData(dfData):
    dfData['English'] = dfData['English'].apply(lambda x: re.sub('\[END]$', '[END]\n', x))
    dfData['English'] = dfData['English'].str.replace("\r","")
    dfData['English'] = dfData['English'].str.replace("\r","")
    return dfData

def createAdjustedBlock(mappingTbl, keys, dfData, memoryId, startInt, endInt):

    #keys = [x for x in keys if not (x.isdigit() or x[0] == '-' and x[1:].isdigit())]
    dfData['TranslatedText'] = dfData['English'].apply(lambda x: x.split(")",1)[-1][1:])
    dfData['NbBytes'] = dfData['TranslatedText'].apply( lambda x: countBytes( keys, mappingTbl, x))
    dfData.to_excel("test.xlsx")
    
    offset = startInt
    sectionText=""
    
   
    for index,row in dfData.iterrows():
        textAdd=""
        v = row['TranslatedText']
        out=[]
        
        nb = countBytes(keys, mappingTbl, v)
        
        offset+= nb
        if (offset >= endInt):
            #print(row['TranslatedText'])
            print("Sub Section start:            {}".format(hex(int(startInt))))
            print("Sub Section original end:     {}".format(hex(int(endInt))))
            print("Sub Section translated end:   {}\n".format(hex(int(offset))))
            print("Overlapp, jump needed")
            print("Offset: {}".format(hex(int(offset))))
            #print("endInt: {}".format(endInt))
            memoryId+= 1
            
            #Go grab a bank of memory
            f = open(os.path.join(os.path.abspath(os.path.dirname(__file__)),"memoryBanks.json"))
            data = json.load(f)
            banks = data['memoryBanks']
            newbank = [ele for ele in banks if ele['Id'] == memoryId][0]
            
            offset = int(newbank['TextStart'], 16)
            endInt = int(newbank['TextEnd'], 16)
            textAdd += "#JMP(${})\n".format(newbank['TextStart'])
            startInt = offset
            print("Jump to {}\n".format(hex(int(offset))))
            
        textAdd += "{}\n".format( row['English'])
        sectionText += textAdd
            
    print("Final Section start:            {}".format(hex(int(startInt))))
    print("Final Section original end:     {}".format(hex(int(endInt))))
    print("Final Section translated end:   {}\n".format(hex(int(offset))))
    
    
    return sectionText, offset, memoryId, endInt
        
def createBlock(dataItems, blockId):
    
    #Authentification
    gc = pygsheets.authorize(service_file=os.path.join(os.path.abspath(os.path.dirname(__file__)),'gsheet.json'))
    #gc = pygsheets.authorize(service_file="gsheet.json")
    
    #Go grab the TextStart for the jump
    block = [ele for ele in dataItems if ele['BlockId'] == int(blockId)][0]
    sections = block['Sections']
    
    #Variables for adjusting overlapping
    textStart = [ele['TextStart'] for ele in sections if ele['SectionId'] == 1][0]
    textEnd   = [ele['TextEnd'] for ele in sections if ele['SectionId'] == max([ele['SectionId'] for ele in sections])][0]
    startInt  = int(textStart, 16)
    endInt    = int(textEnd, 16)
    
    #tbl dataframe to use
    mappingTbl, keys = loadTable()
    
    #Add the first jump
    jumpText = "#JMP(${})\n".format(textStart)
    
    #Grab some infos for each sections
    sectionsList = [ (ele['SectionId'], ele['SectionDesc'], ele['GoogleSheetId']) for ele in sections ]
    
    #Create a block of text with each section
    blockText = ""
    blockText += jumpText
    offset=startInt
    memoryId=0
    for sectionId, sectionDesc, googleId in sectionsList:
        
        blockText += "//Section {}\n\n".format(sectionDesc)
        if googleId != "":
            print(sectionDesc)
            
            #Grab the text from google sheet
            dfData = getGoogleSheetTranslation(gc, googleId, sectionDesc)
            dfData = cleanData(dfData)
            
            sectionText, offset, memoryId, endInt = createAdjustedBlock(mappingTbl, keys, dfData, memoryId, offset, endInt)
            
            #Add the result to the section
            blockText += sectionText.replace("\r","")
    
    #print("original End  : {}".format(hex(endInt)))
    #print("translated End: {}".format(hex(int(offset))))
    return block['BlockDesc'], blockText


    
def createBlockAll(dataItems):
    
    #Authentification
    gc = pygsheets.authorize(service_file=os.path.join(os.path.abspath(os.path.dirname(__file__)),'gsheet.json'))
    gc = pygsheets.authorize(service_file="gsheet.json")
    
    
    
    
    #Go grab the TextStart for the jump
    block = [ele for ele in dataItems if ele['BlockId'] == int(blockId)][0]
    sections = block['Sections']
    
    #Variables for adjusting overlapping
    textStart = [ele['TextStart'] for ele in sections if ele['SectionId'] == 1][0]
    textEnd   = [ele['TextEnd'] for ele in sections if ele['SectionId'] == max([ele['SectionId'] for ele in sections])][0]
    startInt  = int(textStart, 16)
    endInt    = int(textEnd, 16)
    
    #tbl dataframe to use
    mappingTbl, keys = loadTable()
    
    #Add the first jump
    jumpText = "#JMP(${})\n".format(textStart)
    
    #Grab some infos for each sections
    sectionsList = [ (ele['SectionId'], ele['SectionDesc'], ele['GoogleSheetId']) for ele in sections ]
    
    #Create a block of text with each section
    blockText = ""
    blockText += jumpText
    offset=startInt
    memoryId=0
    for sectionId, sectionDesc, googleId in sectionsList:
        
        blockText += "//Section {}\n\n".format(sectionDesc)
        if googleId != "":
            print(sectionDesc)
            
            #Grab the text from google sheet
            dfData = getGoogleSheetTranslation(gc, googleId, sectionDesc)
            dfData = cleanData(dfData)
            
            sectionText, offset, memoryId, endInt = createAdjustedBlock(mappingTbl, keys, dfData, memoryId, offset, endInt)
            
            #Add the result to the section
            blockText += sectionText.replace("\r","")
    
    print("original End  : {}".format(hex(endInt)))
    print("translated End: {}".format(hex(offset)))
    return block['BlockDesc'], blockText


def createAtlasScript_Block(blockId):
    
    
    f = open(os.path.join(os.path.abspath(os.path.dirname(__file__)),"sectionsSLPS.json"))
    data = json.load(f)
    dataItems = data['items']
    
    
    blockDesc, block = createBlock(dataItems, blockId)
    #print("Block : " + block)
    header = getHeader("toddc.tbl")
    with open(os.path.join(os.getcwd(),"code","abcde", "TODDC_"+blockDesc+"_Dump.txt"),encoding="utf-8", mode="w") as finalScript:
        finalScript.write(header + block)

def createAtlasScript_All():
    
    
    f = open(os.path.join(os.path.abspath(os.path.dirname(__file__)),"sectionsSLPS.json"))
    data = json.load(f)
    dataItems = data['items']
    
    
    createBlockAll(dataItems)
    
    header = getHeader("toddc.tbl")
    with open(os.path.join(os.getcwd(),"code","abcde", "TODDC_All_Dump.txt"),encoding="utf-8", mode="w") as finalScript:
        finalScript.write(header + block)
def reinsertText_Block(blockId, slpsName):
    
    path = os.path.join(os.path.abspath(os.path.dirname(__file__)), "abcde")

    f = open(os.path.join(os.path.abspath(os.path.dirname(__file__)),"sectionsSLPS.json"))
    data = json.load(f)
    dataItems = data['items']
    
    #Copy the original SLPS file first
    shutil.copyfile( os.path.join(path,"SLPS_original","SLPS_258.42"), os.path.join(path,"SLPS_258.42"))
    
    #Run Atlas in command line
    blockDesc = [ele['BlockDesc'] for ele in dataItems if ele['BlockId'] == int(blockId)][0]
    
    args = ["perl", "abcde.pl", "-m", "text2bin", "-cm", "abcde::Atlas", "SLPS_258.42", "TODDC_"+blockDesc+"_Dump.txt"]
    listFile = subprocess.run(
        args,
        cwd=path,
        )
    
    #Copy the new SLPS back to Google drive
    #print( "Source: " + os.path.join(path, "SLPS_258.42"))
    #print( "Destination: " + os.path.join(path,"..","..", slpsName))
    shutil.copyfile( os.path.join(path, "SLPS_258.42"), os.path.join(path,"..","..", slpsName))
    
def reinsertText_All(fileFull, slpsName):
    print("not available yet")
    
    
def updateBlock(blockId, SLPSName):
    createAtlasScript_Block(blockId)
    reinsertText_Block(blockId, SLPSName)


googleId = '1ifsW9NJ3lwBUUncYasbELrHMIftldwPSXw1-yPvU0tA'
fileName = 'TODDC_Cinematic1_Dump_cleaned.txt'
finalList = parseText(fileName)
writeColumn(finalList, googleId)
    
#text = 'Upper body armor made of leather.[LINE]\nFavored by adventurers due to its[LINE]\nlightness and fair protection.[END]'
#re.sub('[END]$', '[END]\n', text)

