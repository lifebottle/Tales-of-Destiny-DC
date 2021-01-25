def HexToJpn(word):

    mapping = {}

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\kanji.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[0:4]] = line[6]  

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\katakana.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[0:4]] = line[6]  

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\hiragana.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[0:4]] = line[6]  

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\symbols.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        if (len(line) > 6):
            mapping[line[0:4]] = line[6]      
        else:
            mapping[line[0:2]] = line[4]

    mapping["00"] = " "

    Hex = list(word)
    outputText = []
    i = 0
    while i < len(Hex)-1:
        if i + 6 > len(Hex):
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

# Test on Demon Fang
print(HexToJpn("9B 4D 9B 4E 9B 4C 00 00 00 00 00"))
print(HexToJpn("99 FC 20 9A 41 20 9A 64 20 9A 7E 20 99 D1 20 99 C5 20 9B C4 20 99 CA 20 99 CD 20 99 FA 20 99 BF 20 99 EA 20 99 D4 20 99 AF 20 99 41"))