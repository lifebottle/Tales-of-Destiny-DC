def jHex(word):

    mapping = {}

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\kanji.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        if line[0] != "A":
            mapping[line[6]]= line[0:2] + " " + line[2:4]

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\katakana.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[6]]= line[0:2] + " " + line[2:4] 

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\hiragana.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        mapping[line[6]]= line[0:2] + " " + line[2:4]

    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\symbols.txt", "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        if (len(line) > 6):
            mapping[line[6]]= line[0:2] + " " + line[2:4]   
        else:
            mapping[line[4]] = line[0:2]

    jap = list(word)
    List = []

    for i in jap:
        if i in mapping:
            List.append(mapping[i] + " ")
    
    return "".join(List)

# TEST
print(jHex("ア イ テ ム な ぞ 使 っ て ん じ ゃ ね え ！"))