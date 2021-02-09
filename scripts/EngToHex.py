import sys


def engToHex(word):
    eng = list(word)
    List = []
    for i in eng:
        if i == " ":
            List.append("20")
        elif i == "-":
            List.append("2D")
        elif i == "A":
            List.append("41")
        elif i == "B":
            List.append("42")
        elif i == "C":
            List.append("43")
        elif i == "D":
            List.append("44")
        elif i == "E":
            List.append("45")
        elif i == "F":
            List.append("46")
        elif i == "G":
            List.append("47")
        elif i == "H":
            List.append("48")
        elif i == "I":
            List.append("49")
        elif i == "J":
            List.append("4A")
        elif i == "K":
            List.append("4B")
        elif i == "L":
            List.append("4C")
        elif i == "M":
            List.append("4D")
        elif i == "N":
            List.append("4E")
        elif i == "O":
            List.append("4F")
        elif i == "P":
            List.append("50")
        elif i == "Q":
            List.append("51")
        elif i == "R":
            List.append("52")
        elif i == "S":
            List.append("53")
        elif i == "T":
            List.append("54")
        elif i == "U":
            List.append("55")
        elif i == "V":
            List.append("56")
        elif i == "W":
            List.append("57")
        elif i == "X":
            List.append("58")
        elif i == "Y":
            List.append("59")
        elif i == "Z":
            List.append("5A")
        elif i == "a":
            List.append("61")
        elif i == "b":
            List.append("62")
        elif i == "c":
            List.append("63")
        elif i == "d":
            List.append("64")
        elif i == "e":
            List.append("65")
        elif i == "f":
            List.append("66")
        elif i == "g":
            List.append("67")
        elif i == "h":
            List.append("68")
        elif i == "i":
            List.append("69")
        elif i == "j":
            List.append("6A")
        elif i == "k":
            List.append("6B")
        elif i == "l":
            List.append("6C")
        elif i == "m":
            List.append("6D")
        elif i == "n":
            List.append("6E")
        elif i == "o":
            List.append("6F")
        elif i == "p":
            List.append("70")
        elif i == "q":
            List.append("71")
        elif i == "r":
            List.append("72")
        elif i == "s":
            List.append("73")
        elif i == "t":
            List.append("74")
        elif i == "u":
            List.append("75")
        elif i == "v":
            List.append("76")
        elif i == "w":
            List.append("77")
        elif i == "x":
            List.append("78")
        elif i == "y":
            List.append("79")
        elif i == "z":
            List.append("7A")
        else:
            List.append(i)
    return " ".join(List)


# running the file defaults to this def (needed for node API)
if __name__ == '__main__':
    data = engToHex(sys.argv[1])
    print(data)
