def makeString():
    fo = open(r"C:\Users\Owner\Tales-of-Destiny-DC\dictionary\kanji.txt",
              "r", encoding="utf8")
    Lines = fo.readlines()

    for line in Lines:
        print(createString(line[0:4], line[6]))


def createString(one, two):
    return """        elif(Hex[i] + Hex[i+1] + \" \" + Hex[i+3] + Hex[i+4] == \"""" + one[0:2] + " " + one[2:] + """\"):
            List.append(\"""" + two + """\")"""


makeString()
