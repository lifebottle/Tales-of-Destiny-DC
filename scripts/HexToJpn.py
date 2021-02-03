import os


def HexToJpn(word):

    mapping = {}

    fo = open(os.path.abspath(os.path.join(os.path.dirname(__file__),
                                           '..', '_dictionary//kanji.txt')), "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[0:4]] = line[6]

    fo = open(os.path.abspath(os.path.join(os.path.dirname(__file__),
                                           '..', '_dictionary//katakana.txt')), "r", encoding="utf8")

    Lines = fo.readlines()

    for line in Lines:
        mapping[line[0:4]] = line[6]

    fo = open(os.path.abspath(os.path.join(os.path.dirname(__file__),
                                           '..', '_dictionary//hiragana.txt')), "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[0:4]] = line[6]

    fo = open(os.path.abspath(os.path.join(os.path.dirname(__file__),
                                           '..', '_dictionary//symbols.txt')), "r", encoding="utf8")

    Lines = fo.readlines()

    for line in Lines:
        if (len(line) > 6):
            mapping[line[0:4]] = line[6]
        else:
            mapping[line[0:2]] = line[4]

    mapping["00"] = " "
    mapping["01"] = "\n"

    Hex = list(word)
    outputText = []
    i = 0
    while i < len(Hex)-1:
        if i + 3 > len(Hex):
            break
        if(Hex[i] + Hex[i+1] + Hex[i+3] + Hex[i+4] in mapping):
            outputText.append(mapping[Hex[i] + Hex[i+1] + Hex[i+3] + Hex[i+4]])
            i += 6
        elif(Hex[i] + Hex[i+1] in mapping):
            outputText.append(mapping[Hex[i] + Hex[i+1]])
            i += 3
        else:
            outputText.append(Hex[i] + Hex[i+1])
            i += 3

    return "".join(outputText)
