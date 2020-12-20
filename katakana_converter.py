def toHex(word):
    jap = list(word)
    List = []
    for i in jap:
        if i == "ー":
            List.append("99 A7")
        elif i == "ァ":
            List.append("99 FB")
        elif i == "ア":
            List.append("99 FC")
        elif i == "ィ":
            List.append("9A 40")
        elif i == "イ":
            List.append("9A 41")
        elif i == "ゥ":
            List.append("9A 42")
        elif i == "ウ":
            List.append("9A 43")
        elif i == "ェ":
            List.append("9A 44")
        elif i == "エ":
            List.append("9A 45")
        elif i == "ォ":
            List.append("9A 46")
        elif i == "オ":
            List.append("9A 47")
        elif i == "カ":
            List.append("9A 48")
        elif i == "ガ":
            List.append("9A 49")
        elif i == "キ":
            List.append("9A 4A")
        elif i == "ギ":
            List.append("9A 4B")
        elif i == "ク":
            List.append("9A 4C")
        elif i == "グ":
            List.append("9A 4D")
        elif i == "ケ":
            List.append("9A 4E")
        elif i == "ゲ":
            List.append("9A 4F")
        elif i == "コ":
            List.append("9A 50")
        elif i == "ゴ":
            List.append("9A 51")
        elif i == "サ":
            List.append("9A 52")
        elif i == "ザ":
            List.append("9A 53")
        elif i == "シ":
            List.append("9A 54")
        elif i == "ジ":
            List.append("9A 55")
        elif i == "ス":
            List.append("9A 56")
        elif i == "ズ":
            List.append("9A 57")
        elif i == "セ":
            List.append("9A 58")
        elif i == "ゼ":
            List.append("9A 59")
        elif i == "ソ":
            List.append("9A 5A")
        elif i == "ゾ":
            List.append("9A 5B")
        elif i == "タ":
            List.append("9A 5D")
        elif i == "ダ":
            List.append("9A 5E")
        elif i == "チ":
            List.append("9A 5F")
        elif i == "ヂ":
            List.append("9A 60")
        elif i == "ッ":
            List.append("9A 61")
        elif i == "ツ":
            List.append("9A 62")
        elif i == "ヅ":
            List.append("9A 63")
        elif i == "テ":
            List.append("9A 64")
        elif i == "デ":
            List.append("9A 65")
        elif i == "ト":
            List.append("9A 66")
        elif i == "ド":
            List.append("9A 67")
        elif i == "ナ":
            List.append("9A 68")
        elif i == "ニ":
            List.append("9A 69")
        elif i == "ヌ":
            List.append("9A 6A")
        elif i == "ネ":
            List.append("9A 6B")
        elif i == "ノ":
            List.append("9A 6C")
        elif i == "ハ":
            List.append("9A 6D")
        elif i == "バ":
            List.append("9A 6E")
        elif i == "パ":
            List.append("9A 6F")
        elif i == "ヒ":
            List.append("9A 70")
        elif i == "ビ":
            List.append("9A 71")
        elif i == "ピ":
            List.append("9A 72")
        elif i == "フ":
            List.append("9A 73")
        elif i == "ブ":
            List.append("9A 74")
        elif i == "プ":
            List.append("9A 75")
        elif i == "ヘ":
            List.append("9A 76")
        elif i == "ベ":
            List.append("9A 77")
        elif i == "ペ":
            List.append("9A 78")
        elif i == "ホ":
            List.append("9A 79")
        elif i == "ボ":
            List.append("9A 7A")
        elif i == "ポ":
            List.append("9A 7B")
        elif i == "マ":
            List.append("9A 7C")
        elif i == "ミ":
            List.append("9A 7D")
        elif i == "ム":
            List.append("9A 7E")
        elif i == "メ":
            List.append("9A 80")
        elif i == "モ":
            List.append("9A 81")
        elif i == "ャ":
            List.append("9A 82")
        elif i == "ヤ":
            List.append("9A 83")
        elif i == "ュ":
            List.append("9A 84")
        elif i == "ユ":
            List.append("9A 85")
        elif i == "ョ":
            List.append("9A 86")
        elif i == "ヨ":
            List.append("9A 87")
        elif i == "ラ":
            List.append("9A 88")
        elif i == "リ":
            List.append("9A 89")
        elif i == "ル":
            List.append("9A 8A")
        elif i == "レ":
            List.append("9A 8B")
        elif i == "ロ":
            List.append("9A 8C")
        elif i == "ヮ":
            List.append("9A 8D")
        elif i == "ワ":
            List.append("9A 8E")
        elif i == "ヰ":
            List.append("9A 8F")
        elif i == "ヱ":
            List.append("9A 90")
        elif i == "ヲ":
            List.append("9A 91")
        elif i == "ン":
            List.append("9A 92")
        elif i == "ヴ":
            List.append("9A 93")
        else:
            List.append(i)
    return " ".join(List)
