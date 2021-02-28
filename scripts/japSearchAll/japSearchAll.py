import os
from os.path import join
import pandas as pd
import itertools
import ntpath


def convertHex( hexValue):
    val = hexValue.replace(" ", "")
    print("\\x"+"\\x".join([val[i:i+2] for i in range(0, len(val), 2)]))

    
    
#Search if a file is containing one of the elements from the list
def lookForHex(listValues, fileName):

    with open(fileName, 'rb') as f:
        hexdata = f.read().hex()
        
    hexFound = [ele for ele in listValues if ele in hexdata]
    if len(hexFound) > 0:
        val = hexFound[0]
        hexFound2 = "\\x"+"\\x".join([val[i:i+2] for i in range(0, len(val), 2)])
        print(ntpath.basename(fileName) +' ' + val)


#Load the HEX mapping tables from a path
pathTables = r"G:\TalesHacking\TOD\GitProject\Tales-of-Destiny-DC\dictionary"

dfKanji = pd.read_csv(os.path.join(pathTables,"kanji.txt"), sep=",", header=None, names=['hex', 'value'])
dfHiragana = pd.read_csv(os.path.join(pathTables,"hiragana.txt"), sep=",", header=None, names=['hex', 'value'])
dfKatakana = pd.read_csv(os.path.join(pathTables,"katakana.txt"), sep=",",  header=None, names=['hex', 'value'])
dfSymbols = pd.read_csv(os.path.join(pathTables,"symbols.txt"),  header=None, names=['hex', 'value'], sep=", ", engine='python', encoding='utf-8')
dfSymbols.fillna("",inplace=True)
dfSymbols = dfSymbols.astype(str)


#Make a big table with all the elements
dfAllPoss = pd.concat( [dfKanji, dfHiragana, dfKatakana, dfSymbols])
dfAllPoss['value'] = dfAllPoss['value'].str.replace(' ', '')



#Stuff to search
japText = '売り子'
#List all the different possible ways of HEX for this text
df = [ dfAllPoss.loc[dfAllPoss['value'] == character, 'hex'].tolist() for character in japText]
listValues = []
for element in itertools.product(*df):
    listValues.append(('').join(element).lower())

#file1 = r"H:\SLPS_258.42"
#lookForHex(listValues, file1)

#For one specific file
#file1 = r"F:\PythonCode\TOD_GoogleDoc\abcde\SLPS_258.42"

#listFiles = os.listdir(pathTables+"/../patch/DAT_FILES/")
#listFiles = [join(pathTables+"/../patch/DAT_FILES/"+file) for file in listFiles]
#listFiles.append(file1)

folderList = ['DAT_FILES', 'ENEM', 'PAK0','PAK1', 'PAK3']
allDir = [ os.path.join(pathTables, "../patch", ele) for ele in folderList]

for myDir in allDir:
    for file in os.listdir(myDir):
        lookForHex(listValues,myDir+"/"+file)
        
        
