import os.path
import json
import subprocess
import shutil
import itertools
import pandas as pd
import pygsheets
import re

class Helper:
    
    #Initialize object
    def __init__(self):
        
        self.basePath = os.path.abspath(os.path.dirname(__file__))
        self.tblName = "toddc.tbl"
        
        #Load the two json files for config
        with open(os.path.join(self.basePath, "sectionsSLPS.json")) as f:
            self.dataJson = json.load(f)
            self.dataItems = self.dataJson['items']
        
        with open(os.path.join(self.basePath, "memoryBanks.json")) as f:
            data = json.load(f)
            self.dfBanks = pd.DataFrame.from_dict(data['memoryBanks'])
            self.dfBanks['BlockDesc'] = ''
            
        #Authentification
        self.gc = pygsheets.authorize(service_file=os.path.join(self.basePath,'gsheet.json'))
        
        self.currentMemoryId = 1
        self.currentStart = 0
        self.currentEnd = 0
        self.originalSectionEnd = 0
        self.offset= 0
        
        self.loadTable()
        
    def getJsonBlock(self,blockDesc):
        return [ele for ele in self.dataItems if ele['BlockDesc'] == blockDesc][0]
    
    def showSections(self,blockDesc):
        
        blockSections = self.getJsonBlock(blockDesc)
        sectionsInfos = [ [ele['SectionId'], ele['SectionDesc']] for ele in blockSections['Sections']]
        
        #Print the sections on the screen
        for sectionId, sectionDesc in sectionsInfos:
            print("{}. {}".format(sectionId, sectionDesc))
        print("\n")
       
        
        
    def parseText(self,fileName):
        
        fread = open(os.path.join( self.basePath,"abcde", fileName),encoding="utf-8", mode="r")
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

    def writeColumn(self,finalList, googleId):
        
        sh = self.gc.open_by_key(googleId)
    
        #Look for Dump sheet 
        wks = sh.worksheet('title','Dump')
          
        #update the first sheet with df, starting at cell B2. 
        df=pd.DataFrame({"Japanese":finalList, "English":finalList})
        wks.set_dataframe(df,(1,0))
    
    def getGoogleSheetTranslation(self,googlesheetId, sheetName):
        
        sh = self.gc.open_by_key(googlesheetId)
        sheets = sh.worksheets()
        
        idSheet = [ ele.index for ele in sheets if ele.title == sheetName ][0]
        if idSheet != None:
            wks = sh[idSheet]
            
            df = pd.DataFrame(wks.get_all_records())
            
            #with open("test.txt",encoding="utf-8", mode="w") as f:
            #    f.write(translationsText)
            self.dfData = df
        else:
            print("Cannot find the sheet name in the google sheet")
            return "No"
    

    def removeBlankPointerData(self,fileName):
        print(fileName)
        fread = open(os.path.join( self.basePath,"abcde", fileName),encoding="utf-8", mode="r")
        fwrite = open(os.path.join( self.basePath,"abcde", "w"+fileName),encoding="utf-8", mode="w")
        
        lines = fread.readlines()
        indexStart = [i for i,line in enumerate(lines) if "FFFFFFFFFFF01000" in line] 
        indexComp = [list(range(i,i+5)) for i in indexStart]
        indexComp = list(itertools.chain.from_iterable(indexComp))
        
        for i,line in enumerate(lines):
            if i not in indexComp:
                
                fwrite.write(line)
                
        fread.close()
        fwrite.close()
        
        shutil.copyfile( os.path.join(self.basePath, "abcde","w"+fileName), os.path.join(self.basePath, "abcde",fileName))
    
    def getHeader(self):
        headerTxt="""#VAR(Table_0, TABLE)
#ADDTBL("{}", Table_0)

//BLOCK #000 NAME:
#ACTIVETBL(Table_0) // Activate this block's starting TABLE
#VAR(ptr, CUSTOMPOINTER)
#CREATEPTR(ptr, "LINEAR", $-{}, 32)

""".format(os.path.join(self.basePath, "abcde", self.tblName), self.PointerHeader)
    
    
        return headerTxt

    def loadTable(self):
    
        with open(os.path.join(self.basePath, "abcde", self.tblName), encoding="utf-8", mode="r") as tblfile:
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
        
        self.keys = keys
        self.mappingTbl = mydict

    def findall(self,p, s):
        '''Yields all the positions of
        the pattern p in the string s.'''
        i = s.find(p)
        while i != -1:
            yield i
            i = s.find(p, i+1)
    
    def countBytes(self,text):
        
        out=[]
        base=text
        for k in self.keys:
               
            if k in base:
                
                #nb = len(re.findall(k.replace("?","\?").replace("[","\["), v))
                nb = len([i for i in self.findall(k, base)])
          
                
                base=base.replace(k,'')
                #print(base)
                out.append(self.mappingTbl[k]*nb)
                
        res = len("".join(out))/2
        
        return res

    def cleanData(self):
        
        self.dfData['English'] = self.dfData['English'].apply(lambda x: re.sub('\[END]$', '[END]\n', x))
        self.dfData['English'] = self.dfData['English'].str.replace("\r","")


    def createAdjustedBlock(self):
    
        #keys = [x for x in keys if not (x.isdigit() or x[0] == '-' and x[1:].isdigit())]
        self.dfData['TranslatedText'] = self.dfData['English'].apply(lambda x: x.split(")",1)[-1][1:])
        #dfData['NbBytes'] = dfData['TranslatedText'].apply( lambda x: countBytes( keys, mappingTbl, x))
        #dfData.to_excel("test.xlsx")
        
        
        sectionText=""
        
       
        for index,row in self.dfData.iterrows():
            textAdd=""
            v = row['TranslatedText']
     
            
            nb = self.countBytes(v)
            
            
            if (self.offset + nb > self.currentEnd):
                print("Sub Section start:            {}".format(hex(int(self.currentStart))))
                print("Sub Section original end:     {}".format(hex(int(self.currentEnd))))
                print("Sub Section translated end:   {}\n".format(hex(int(self.offset))))
                print("Overlapp, jump needed")
                print("Offset: {}".format(hex(int(self.offset))))
                
                #print("endInt: {}".format(endInt))
                self.currentMemoryId+= 1
                print("Text to insert : "+v)
                print("BankId: "+str(self.currentMemoryId))
                
                #Go grab a bank of memory
                newbank = self.dfBanks[ (self.dfBanks['Id'] == self.currentMemoryId) & (self.dfBanks['File'] == self.File)]
                self.offset = int(newbank['TextStart'].tolist()[0], 16)
    
                self.currentEnd = int(newbank['TextEnd'].tolist()[0], 16)
                textAdd += "#JMP(${})\n".format(newbank['TextStart'].tolist()[0])
                
                self.currentStart = self.offset
                
            
            self.offset += nb
                
                
                
            textAdd += "{}\n".format( row['English'])
            sectionText += textAdd
                
        print("Final Section start:            {}".format(hex(int(self.currentStart))))
        print("Final Section original end:     {}".format(hex(int(self.originalSectionEnd))))
        print("Final Section translated end:   {}\n".format(hex(int(self.offset))))
        
        self.currentStart = self.offset
        
        return sectionText
        
    def createBlock(self,blockDesc):
        
        #gc = pygsheets.authorize(service_file="gsheet.json")
        
        #Go grab the TextStart for the jump
        block = self.getJsonBlock(blockDesc)
        self.File = block['File']
        self.PointerHeader = block['PointerHeader']
        self.createAllBanks()
        
        sections = block['Sections']
        lastSection = max([ele['SectionId'] for ele in sections])
        #Variables for adjusting overlapping
        textStart = [ele['TextStart'] for ele in sections if ele['SectionId'] == 1][0]
        textEnd = [ele['TextEnd'] for ele in sections if ele['SectionId'] == lastSection][0]
        self.currentStart  = int(textStart, 16)
        self.currentEnd    = int(textEnd, 16)
        self.offset = int(textStart,16)
        
        
        #Add the first jump
        jumpText = "#JMP(${})\n".format(textStart)
        
        #Grab some infos for each sections
        sectionsList = [ (ele['SectionId'], ele['SectionDesc'], ele['GoogleSheetId']) for ele in sections ]
        
        #Create a block of text with each section
        blockText = ""
        blockText += jumpText
      
        
        for sectionId, sectionDesc, googleId in sectionsList:
            
            blockText += "//Section {}\n\n".format(sectionDesc)
            self.originalSectionEnd = int([ele['TextEnd'] for ele in sections if ele['SectionId'] == sectionId][0],16)
            if googleId != "":
              
                
                #Grab the text from google sheet
                self.getGoogleSheetTranslation(googleId, sectionDesc)
                self.cleanData()
                
                sectionText = self.createAdjustedBlock()
                
                #Add the result to the section
                blockText += sectionText.replace("\r","")
        
        print("Max Block End               :   {}".format(hex(int(textEnd, 16))))
        return block['BlockDesc'], blockText

    def createAtlasScript_Block(self,blockDesc):
        

        block = self.createBlockAll(blockDesc)
       
        header = self.getHeader()
        with open(os.path.join(self.basePath,"abcde", "TODDC_"+blockDesc+"_Dump.txt"),encoding="utf-8", mode="w") as finalScript:
            finalScript.write(header + block)
    
    def reinsertText_Block(self,blockDesc):
    
        #Copy the original file
        fileName = os.path.basename(self.File) 
        shutil.copyfile( os.path.join(self.basePath,self.File), os.path.join(self.basePath,"abcde",fileName))
        
        #Run Atlas in command line
        blockDesc = [ele['BlockDesc'] for ele in self.dataItems if ele['BlockDesc'] == blockDesc][0]
        
        args = ["perl", "abcde.pl", "-m", "text2bin", "-cm", "abcde::Atlas", fileName, "TODDC_"+blockDesc+"_Dump.txt"]
        listFile = subprocess.run(
            args,
            cwd= os.path.join(self.basePath, "abcde"),
            )
        
        #Copy the new SLPS back to Google drive
        #print( "Source: " + os.path.join(path, "SLPS_258.42"))
        #print( "Destination: " + os.path.join(path,"..","..", slpsName))
        shutil.copyfile( os.path.join(self.basePath,"abcde", fileName), os.path.join(self.basePath,"..", fileName))
    
    def createAllBanks(self):
        
       

        #For each block, pick the first and last Offset
        listBlock = [ [ ele['BlockDesc'], ele['Sections'][0]['TextStart'], ele['Sections'][-1]['TextEnd'], ele['File']] for ele in self.dataItems if ele['File'] == self.File]
        dfBase = pd.DataFrame(listBlock, columns=['BlockDesc','TextStart','TextEnd', 'File'])
        print(dfBase)
        
        #Add the 3 original memory banks
        self.dfBanks = dfBase.append(self.dfBanks)
        self.dfBanks = self.dfBanks[ self.dfBanks['File'] == self.File]
        self.dfBanks = self.dfBanks.reset_index(drop=True)
        self.dfBanks['Id'] = self.dfBanks.index + 1
        print( self.dfBanks)
    
    
    def createBlockAll(self, blockDesc):
            
        if blockDesc == "All":
            self.File = "abcde/SLPS_original/SLPS_258.42"
            self.PointerHeader = "FF000"
        else:
            block = self.getJsonBlock(blockDesc)
            self.File = block['File']
            self.PointerHeader = block['PointerHeader']
        self.createAllBanks()
        
        #tbl dataframe to use
        self.loadTable()
        
        #Variables for adjusting overlapping
        memoryId=1
        bank = self.dfBanks[ self.dfBanks['Id'] == memoryId]
        
        banksNotEmpty = self.dfBanks[ self.dfBanks['BlockDesc'] != ""]
        lastbank = banksNotEmpty[banksNotEmpty['Id'] == banksNotEmpty['Id'].max()]
        
        textStart = bank['TextStart'][0]
        finalEnd = lastbank['TextEnd'].tolist()[0]
        self.currentStart  = int(textStart, 16)
        self.currentEnd    = int(bank['TextEnd'][0], 16)
        self.offset = self.currentStart
        
        #First Jump
        jumpText = "#JMP(${})\n".format(textStart)
        allText = jumpText
        
        #Loop over all block
        dfBlock = self.dfBanks[ self.dfBanks['BlockDesc'] != ""]
        #print(self.dfBanks)
        for index, row in dfBlock.iterrows():
            
            
            
            print("Block: {}".format(row['BlockDesc']))
            sections = [ele['Sections'] for ele in self.dataItems if ele['BlockDesc'] == row['BlockDesc']][0]
            #print(sections)
            sectionsList = [ (ele['SectionId'], ele['SectionDesc'], ele['GoogleSheetId']) for ele in sections ]
            
            #Create a block of text with each section
            blockText = ""
            for sectionId, sectionDesc, googleId in sectionsList:
            
                blockText += "//Section {}\n\n".format(sectionDesc)
                self.originalSectionEnd = int([ele['TextEnd'] for ele in sections if ele['SectionId'] == sectionId][0],16)
                if googleId != "":
                    print(sectionDesc)
                    print("Google Sheet : {}".format(sectionDesc))
                    self.getGoogleSheetTranslation(googleId, sectionDesc)
                    self.cleanData()
                    
                    print("Create Adjusted block : {}".format(sectionDesc))
                    sectionText = self.createAdjustedBlock()
                    
                    #Add the result to the section
                    blockText += sectionText.replace("\r","")
                    
            allText += blockText
            
        print("Max Block End               :   {}".format(hex(int(finalEnd, 16))))
        return allText
            
                    
    def createAtlasScript_All(self):
        

        allText = self.createBlockAll("All")
       
        header = self.getHeader()
        with open(os.path.join(self.basePath,"abcde", "TODDC_All_Dump.txt"),encoding="utf-8", mode="w") as finalScript:
            finalScript.write(header + allText)

    
    def reinsertText_All(self, fileFull):
    
        #Copy the original SLPS file first
        shutil.copyfile( os.path.join(self.basePath,"abcde","SLPS_original","SLPS_258.42"), os.path.join(self.basePath,"abcde","SLPS_258.42"))
        
        
        args = ["perl", "abcde.pl", "-m", "text2bin", "-cm", "abcde::Atlas", "SLPS_258.42", "TODDC_All_Dump.txt"]
        listFile = subprocess.run(
            args,
            cwd= os.path.join(self.basePath, "abcde"),
            )
        
        shutil.copyfile( os.path.join(self.basePath,"abcde", "SLPS_258.42"), os.path.join(self.basePath,"..", "SLPS_258.42"))
    
    
