def jHex(word):
    jap = list(word)
    List = []
    for i in jap:
        if i == "・":
            List.append("99 A2")
        # Hiragana Start
        elif i == "ー":
            List.append("99 A7")       
        elif i == "ぁ":
            List.append("99 A8")
        elif i == "あ":
            List.append("99 A9")
        elif i == "ぃ":
            List.append("99 AA")
        elif i == "い":
            List.append("99 AB")
        elif i == "ぅ":
            List.append("99 AC")
        elif i == "う":
            List.append("99 AD")
        elif i == "ぇ":
            List.append("99 AE")
        elif i == "え":
            List.append("99 AF")
        elif i == "ぉ":
            List.append("99 B0")
        elif i == "お":
            List.append("99 B1")
        elif i == "か":
            List.append("99 B2")
        elif i == "が":
            List.append("99 B3")
        elif i == "き":
            List.append("99 B4")
        elif i == "ぎ":
            List.append("99 B5")
        elif i == "く":
            List.append("99 B6")
        elif i == "ぐ":
            List.append("99 B7")
        elif i == "け":
            List.append("99 B8")
        elif i == "げ":
            List.append("99 B9")
        elif i == "こ":
            List.append("99 BA")
        elif i == "ご":
            List.append("99 BB")
        elif i == "さ":
            List.append("99 BC")
        elif i == "ざ":
            List.append("99 BD")
        elif i == "し":
            List.append("99 BE")
        elif i == "じ":
            List.append("99 BF")
        elif i == "す":
            List.append("99 C0")
        elif i == "ず":
            List.append("99 C1")
        elif i == "せ":
            List.append("99 C2")
        elif i == "ぜ":
            List.append("99 C3")
        elif i == "そ":
            List.append("99 C4")
        elif i == "ぞ":
            List.append("99 C5")
        elif i == "た":
            List.append("99 C6")
        elif i == "だ":
            List.append("99 C7")
        elif i == "ち":
            List.append("99 C8")
        elif i == "ぢ":
            List.append("99 C9")
        elif i == "っ":
            List.append("99 CA")
        elif i == "つ":
            List.append("99 CB")
        elif i == "づ":
            List.append("99 CC")
        elif i == "て":
            List.append("99 CD")
        elif i == "で":
            List.append("99 CE")
        elif i == "と":
            List.append("99 CF")
        elif i == "ど":
            List.append("99 D0")
        elif i == "な":
            List.append("99 D1")
        elif i == "に":
            List.append("99 D2")
        elif i == "ぬ":
            List.append("99 D3")
        elif i == "ね":
            List.append("99 D4")
        elif i == "の":
            List.append("99 D5")
        elif i == "は":
            List.append("99 D6")
        elif i == "ば":
            List.append("99 D7")
        elif i == "ぱ":
            List.append("99 D8")
        elif i == "ひ":
            List.append("99 D9")
        elif i == "び":
            List.append("99 DA")
        elif i == "ぴ":
            List.append("99 DB")
        elif i == "ふ":
            List.append("99 DC")
        elif i == "ぶ":
            List.append("99 DD")
        elif i == "ぷ":
            List.append("99 DE")
        elif i == "へ":
            List.append("99 DF")
        elif i == "べ":
            List.append("99 E0")
        elif i == "ぺ":
            List.append("99 E1")
        elif i == "ほ":
            List.append("99 E2")
        elif i == "ぼ":
            List.append("99 E3")
        elif i == "ぽ":
            List.append("99 E4")
        elif i == "ま":
            List.append("99 E5")
        elif i == "み":
            List.append("99 E6")
        elif i == "む":
            List.append("99 E7")
        elif i == "め":
            List.append("99 E8")
        elif i == "も":
            List.append("99 E9")
        elif i == "ゃ":
            List.append("99 EA")
        elif i == "や":
            List.append("99 EB")
        elif i == "ゅ":
            List.append("99 EC")
        elif i == "ゆ":
            List.append("99 ED")
        elif i == "ょ":
            List.append("99 EE")
        elif i == "よ":
            List.append("99 EF")
        elif i == "ら":
            List.append("99 F0")
        elif i == "り":
            List.append("99 F1")
        elif i == "る":
            List.append("99 F2")
        elif i == "れ":
            List.append("99 F3")
        elif i == "ろ":
            List.append("99 F4")
        elif i == "ゎ":
            List.append("99 F5")
        elif i == "わ":
            List.append("99 F6")
        elif i == "ゐ":
            List.append("99 F7")
        elif i == "ゑ":
            List.append("99 F8")
        elif i == "を":
            List.append("99 F9")
        elif i == "ん":
            List.append("99 FA")
        # Katakana Start
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
        # Kanji Start
        elif i =="9B4C":
            List.append("9B 4C")
        elif i =="9B4D":
            List.append("9B 4D")
        elif i =="9B4E":
            List.append("9B 4E")
        elif i =="9B56":
            List.append("9B 56")
        elif i =="9B57":
            List.append("9B 57")
        elif i =="9B65":
            List.append("9B 65")
        elif i =="9B6C":
            List.append("9B 6C")
        elif i =="9B73":
            List.append("9B 73")
        elif i =="9B75":
            List.append("9B 75")
        elif i =="9B76":
            List.append("9B 76")
        elif i =="9B79":
            List.append("9B 79")
        elif i =="9B7E":
            List.append("9B 7E")
        elif i =="9B81":
            List.append("9B 81")
        elif i =="9B84":
            List.append("9B 84")
        elif i =="9B8B":
            List.append("9B 8B")
        elif i =="9B8C":
            List.append("9B 8C")
        elif i =="9BAB":
            List.append("9B AB")
        elif i =="9BAC":
            List.append("9B AC")
        elif i =="9BAD":
            List.append("9B AD")
        elif i =="9BB5":
            List.append("9B B5")
        elif i =="9BBB":
            List.append("9B BB")
        elif i =="9BBC":
            List.append("9B BC")
        elif i =="9BC5":
            List.append("9B C5")
        elif i =="9BC9":
            List.append("9B C9")
        elif i =="9BCA":
            List.append("9B CA")
        elif i =="9BD9":
            List.append("9B D9")
        elif i =="9BDB":
            List.append("9B DB")
        elif i =="9BDC":
            List.append("9B DC")
        elif i =="9BDD":
            List.append("9B DD")
        elif i =="9BE8":
            List.append("9B E8")
        elif i =="9BE9":
            List.append("9B E9")
        elif i =="9BEA":
            List.append("9B EA")
        elif i =="9BF1":
            List.append("9B F1")
        elif i =="9C50":
            List.append("9C 50")
        elif i =="9C53":
            List.append("9C 53")
        elif i =="9C5F":
            List.append("9C 5F")
        elif i =="9C67":
            List.append("9C 67")
        elif i =="9C71":
            List.append("9C 71")
        elif i =="9C77":
            List.append("9C 77")
        elif i =="9C79":
            List.append("9C 79")
        elif i =="9C7B":
            List.append("9C 7B")
        elif i =="9C84":
            List.append("9C 84")
        elif i =="9C94":
            List.append("9C 94")
        elif i =="9C96":
            List.append("9C 96")
        elif i =="9C9A":
            List.append("9C 9A")
        elif i =="9C9D":
            List.append("9C 9D")
        elif i =="9CA3":
            List.append("9C A3")
        elif i =="9CA8":
            List.append("9C A8")
        elif i =="9CA9":
            List.append("9C A9")
        elif i =="9CAA":
            List.append("9C AA")
        elif i =="9CB0":
            List.append("9C B0")
        elif i =="9CB7":
            List.append("9C B7")
        elif i =="9CBA":
            List.append("9C BA")
        elif i =="9CBF":
            List.append("9C BF")
        elif i =="9CC3":
            List.append("9C C3")
        elif i =="9CC7":
            List.append("9C C7")
        elif i =="9CD7":
            List.append("9C D7")
        elif i =="9D C4":
            List.append("9D C4")
        elif i =="9D51":
            List.append("9D 51")
        elif i =="9D96":
            List.append("9D 96")
        elif i =="9DBB":
            List.append("9D BB")
        elif i =="9DD5":
            List.append("9D D5")
        elif i =="9E4D":
            List.append("9E 4D")
        elif i =="9E56":
            List.append("9E 56")
        elif i =="9E81":
            List.append("9E 81")
        elif i =="9E84":
            List.append("9E 84")
        elif i =="9EAC":
            List.append("9E AC")
        elif i =="9ED8":
            List.append("9E D8")
        elif i =="9EEE":
            List.append("9E EE")
        elif i =="9EF7":
            List.append("9E F7")
        elif i =="9F4D":
            List.append("9F 4D")
        elif i =="9F8D":
            List.append("9F 8D")
        elif i =="9FB4":
            List.append("9F B4")
        elif i =="9FB7":
            List.append("9F B7")
        elif i =="9FD0":
            List.append("9F D0")
        elif i =="9FD8":
            List.append("9F D8")
        elif i =="9FDA":
            List.append("9F DA")
        elif i =="E053":
            List.append("E0 53")
        elif i =="E073":
            List.append("E0 73")
        elif i =="E074":
            List.append("E0 74")
        elif i =="E075":
            List.append("E0 75")
        elif i =="E077":
            List.append("E0 77")
        elif i =="E083":
            List.append("E0 83")
        elif i =="E097":
            List.append("E0 97")
        elif i =="E09C":
            List.append("E0 9C")
        elif i =="E0AA":
            List.append("E0 AA")
        elif i =="E0D9":
            List.append("E0 D9")
        elif i =="E1 6C":
            List.append("E1 6C")
        elif i =="E155":
            List.append("E1 55")
        elif i =="E15B":
            List.append("E1 5B")
        elif i =="E15D":
            List.append("E1 5D")
        elif i =="E160":
            List.append("E1 60")
        elif i =="E18F":
            List.append("E1 8F")
        elif i =="E198":
            List.append("E1 98")
        elif i =="E1AC":
            List.append("E1 AC")
        elif i =="E1FC":
            List.append("E1 FC")
        elif i =="E24B":
            List.append("E2 4B")
        elif i =="E264":
            List.append("E2 64")
        elif i =="E281":
            List.append("E2 81")
        elif i =="E283":
            List.append("E2 83")
        elif i =="E2A3":
            List.append("E2 A3")
        elif i =="E2A9":
            List.append("E2 A9")
        elif i =="E2C3":
            List.append("E2 C3")
        elif i =="E340":
            List.append("E3 40")
        elif i =="E34E":
            List.append("E3 4E")
        elif i =="E375":
            List.append("E3 75")
        elif i =="E381":
            List.append("E3 81")
        elif i =="E39D":
            List.append("E3 9D")
        elif i =="E3A4":
            List.append("E3 A4")
        elif i =="E3AE":
            List.append("E3 AE")
        elif i =="E3B2":
            List.append("E3 B2")
        elif i =="E3CF":
            List.append("E3 CF")
        elif i =="E3D6":
            List.append("E3 D6")
        elif i =="E4 4E":
            List.append("E4 4E")
        elif i =="E4 60":
            List.append("E4 60")
        elif i =="E44D":
            List.append("E4 4D")
        elif i =="E46C":
            List.append("E4 6C")
        elif i =="E4CF":
            List.append("E4 CF")
        elif i =="E547":
            List.append("E5 47")
        elif i =="E54F":
            List.append("E5 4F")
        elif i =="E589":
            List.append("E5 89")
        elif i =="E5A6":
            List.append("E5 A6")
        elif i =="E5E0":
            List.append("E5 E0")
        elif i =="E5E4":
            List.append("E5 E4")
        elif i =="E5F5":
            List.append("E5 F5")
        elif i =="E67B":
            List.append("E6 7B")
        elif i =="E6A4":
            List.append("E6 A4")
        elif i =="E6C5":
            List.append("E6 C5")
        elif i =="E6D0":
            List.append("E6 D0")
        elif i =="E773":
            List.append("E7 73")
        elif i =="E7A0":
            List.append("E7 A0")
        elif i =="E7B4":
            List.append("E7 B4")
        elif i =="E7C7":
            List.append("E7 C7")
        elif i =="E7F8":
            List.append("E7 F8")
        elif i =="E849":
            List.append("E8 49")
        elif i =="E867":
            List.append("E8 67")
        elif i =="E87D":
            List.append("E8 7D")
        elif i =="E89D":
            List.append("E8 9D")
        elif i =="E8A0":
            List.append("E8 A0")
        elif i =="E8C1":
            List.append("E8 C1")
        elif i =="E8C9":
            List.append("E8 C9")
        elif i =="E8E1":
            List.append("E8 E1")
        elif i =="E948":
            List.append("E9 48")
        elif i =="E951":
            List.append("E9 51")
        elif i =="E968":
            List.append("E9 68")
        elif i =="E988":
            List.append("E9 88")
        elif i =="E9A0":
            List.append("E9 A0")
        elif i =="E9A1":
            List.append("E9 A1")
        elif i =="E9AC":
            List.append("E9 AC")
        elif i =="E9BF":
            List.append("E9 BF")
        elif i =="EA4A":
            List.append("EA 4A")
        elif i =="EA8E":
            List.append("EA 8E")
        elif i =="EA9B":
            List.append("EA 9B")
        elif i =="EAC3":
            List.append("EA C3")
        elif i =="EACB":
            List.append("EA CB")
        elif i =="EAD6":
            List.append("EA D6")
        elif i =="EAE3":
            List.append("EA E3")
        elif i =="EAE4":
            List.append("EA E4")
        elif i =="EB81":
            List.append("EB 81")
        elif i =="EB84":
            List.append("EB 84")
        # Alphabet Start
        # Greek Start
        else:
            List.append(i)
    return " ".join(List)
