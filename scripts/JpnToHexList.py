import os
from os.path import join
import pandas as pd
import itertools
import ntpath


# Search if a file is containing one of the elements from the list
def lookForHex(listValues, fileName):

    with open(fileName, 'rb') as f:
        hexdata = f.read().hex()

    hexFound = [ele for ele in listValues if ele in hexdata]
    if len(hexFound) > 0:
        print(ntpath.basename(fileName) + ' ' + hexFound[0])

# japText = 'から設定することができます。'


def jpnToHexList(japText):

    # Load the HEX mapping tables from a path
    pathTables = os.path.abspath(os.path.join(os.path.dirname(__file__),
                                              '..', 'dictionary'))

    dfKanji = pd.read_csv(pathTables + "//kanji.txt", sep=",",
                          header=None, names=['hex', 'value'])
    dfHiragana = pd.read_csv(pathTables + "//hiragana.txt",
                             sep=",", header=None, names=['hex', 'value'])
    dfKatakana = pd.read_csv(pathTables + "//katakana.txt",
                             sep=",",  header=None, names=['hex', 'value'])
    dfSymbols = pd.read_csv(pathTables + "//symbols.txt",  header=None,
                            names=['hex', 'value'], sep=", ", engine='python', encoding='utf-8')
    dfSymbols.fillna("", inplace=True)
    dfSymbols = dfSymbols.astype(str)

    # Make a big table with all the elements
    dfAllPoss = pd.concat([dfKanji, dfHiragana, dfKatakana, dfSymbols])
    dfAllPoss['value'] = dfAllPoss['value'].str.replace(' ', '')
    dfAllPoss['hex'] = dfAllPoss['hex'].str.slice(
        0, 2) + ' ' + dfAllPoss['hex'].str.slice(2, 4)

    # List all the different possible ways of HEX for this text
    df = [dfAllPoss.loc[dfAllPoss['value'] == character, 'hex'].tolist()
          for character in japText]
    listValues = []
    for element in itertools.product(*df):
        listValues.append((' ').join(element).lower())

    return listValues
