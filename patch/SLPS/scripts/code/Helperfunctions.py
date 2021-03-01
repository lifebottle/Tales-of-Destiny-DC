import os.path
import json
import subprocess
import shutil
import itertools
import pandas as pd
import pygsheets


def grabGoogleDocToText(documentId):
    
    creds = getCredentials()
    
    service = build('docs', 'v1', credentials=creds)
    doc = service.documents().get(documentId=documentId).execute()
    doc_content = doc.get('body').get('content')
    textDump = read_strucutural_elements(doc_content)

    return textDump

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
        return df['Japanese'].tolist(), df['English'].tolist()
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

def getSpaceOccupied(textList):
    firstNb = int( textList[-1].split("\n")[0].replace("//Text $",""), 16)
    lastNb  = int( textList[0].split("\n")[0].replace("//Text $",""), 16)
    return lastNb - firstNb
    
def createBlock(dataItems, blockId):
    
    #Authentification
    gc = pygsheets.authorize(service_file=os.path.join(os.path.abspath(os.path.dirname(__file__)),'gsheet.json'))
    #gc = pygsheets.authorize(service_file="gsheet.json")
    
    #Go grab the TextStart for the jump
    block = [ele for ele in dataItems if ele['BlockId'] == int(blockId)][0]

    textStart = block['TextStartBlock']
    jumpText = "#JMP(${})\n".format(textStart)
    
    #Loop over each section and grab the DumpText
    sectionsList = [ (ele['SectionId'], ele['SectionDesc'], ele['GoogleSheetId']) for ele in block['Sections'] ]
    
    #Create a block of text with each section
    blockText = ""
    blockText += jumpText
    for sectionId, sectionDesc, googleId in sectionsList:
        print(sectionDesc)
        if googleId != "":
            
            #Grab the text from google sheet
            originalTextList, translatedTextList = getGoogleSheetTranslation(gc, googleId, sectionDesc)
            
            #Print Stats about space
            originalSpace = getSpaceOccupied(originalTextList)
            finalSpace = getSpaceOccupied(translatedTextList)
            #print("Original space: {}     Final space: {}".format(originalSpace, finalSpace))
            
            blockText += "//Section {}\n\n".format(sectionDesc)
            blockText += "\n".join(translatedTextList)
        
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


#googleId = '1CphbUBulbyEK_Mm_fG0suXDLwo9xHWF2p1jhLmDHn3Y'
#fileName = 'TODDC_Item_Key_Dump_cleaned.txt'
#finalList = parseText(fileName)
#writeColumn(finalList, googleId)
    


