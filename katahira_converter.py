def toHex(word):
    jap = list(word)
    List = []
    for i in jap:
        if i == "ー":
            List.append("99 A7")
        # Hiragana Start
        elif i =="ぁ":
            List.append("99 A8")
        elif i =="あ":
            List.append("99 A9")
        elif i =="ぃ":
            List.append("99 AA")
        elif i =="い":
            List.append("99 AB")
        elif i =="ぅ":
            List.append("99 AC")
        elif i =="う":
            List.append("99 AD")
        elif i =="ぇ":
            List.append("99 AE")
        elif i =="え":
            List.append("99 AF")
        elif i =="ぉ":
            List.append("99 B0")
        elif i =="お":
            List.append("99 B1")
        elif i =="か":
            List.append("99 B2")
        elif i =="が":
            List.append("99 B3")
        elif i =="き":
            List.append("99 B4")
        elif i =="ぎ":
            List.append("99 B5")
        elif i =="く":
            List.append("99 B6")
        elif i =="ぐ":
            List.append("99 B7")
        elif i =="け":
            List.append("99 B8")
        elif i =="げ":
            List.append("99 B9")
        elif i =="こ":
            List.append("99 BA")
        elif i =="ご":
            List.append("99 BB")
        elif i =="さ":
            List.append("99 BC")
        elif i =="ざ":
            List.append("99 BD")
        elif i =="し":
            List.append("99 BE")
        elif i =="じ":
            List.append("99 BF")
        elif i =="す":
            List.append("99 C0")
        elif i =="ず":
            List.append("99 C1")
        elif i =="せ":
            List.append("99 C2")
        elif i =="ぜ":
            List.append("99 C3")
        elif i =="そ":
            List.append("99 C4")
        elif i =="ぞ":
            List.append("99 C5")
        elif i =="た":
            List.append("99 C6")
        elif i =="だ":
            List.append("99 C7")
        elif i =="ち":
            List.append("99 C8")
        elif i =="ぢ":
            List.append("99 C9")
        elif i =="っ":
            List.append("99 CA")
        elif i =="つ":
            List.append("99 CB")
        elif i =="づ":
            List.append("99 CC")
        elif i =="て":
            List.append("99 CD")
        elif i =="で":
            List.append("99 CE")
        elif i =="と":
            List.append("99 CF")
        elif i =="ど":
            List.append("99 D0")
        elif i =="な":
            List.append("99 D1")
        elif i =="に":
            List.append("99 D2")
        elif i =="ぬ":
            List.append("99 D3")
        elif i =="ね":
            List.append("99 D4")
        elif i =="の":
            List.append("99 D5")
        elif i =="は":
            List.append("99 D6")
        elif i =="ば":
            List.append("99 D7")
        elif i =="ぱ":
            List.append("99 D8")
        elif i =="ひ":
            List.append("99 D9")
        elif i =="び":
            List.append("99 DA")
        elif i =="ぴ":
            List.append("99 DB")
        elif i =="ふ":
            List.append("99 DC")
        elif i =="ぶ":
            List.append("99 DD")
        elif i =="ぷ":
            List.append("99 DE")
        elif i =="へ":
            List.append("99 DF")
        elif i =="べ":
            List.append("99 E0")
        elif i =="ぺ":
            List.append("99 E1")
        elif i =="ほ":
            List.append("99 E2")
        elif i =="ぼ":
            List.append("99 E3")
        elif i =="ぽ":
            List.append("99 E4")
        elif i =="ま":
            List.append("99 E5")
        elif i =="み":
            List.append("99 E6")
        elif i =="む":
            List.append("99 E7")
        elif i =="め":
            List.append("99 E8")
        elif i =="も":
            List.append("99 E9")
        elif i =="ゃ":
            List.append("99 EA")
        elif i =="や":
            List.append("99 EB")
        elif i =="ゅ":
            List.append("99 EC")
        elif i =="ゆ":
            List.append("99 ED")
        elif i =="ょ":
            List.append("99 EE")
        elif i =="よ":
            List.append("99 EF")
        elif i =="ら":
            List.append("99 F0")
        elif i =="り":
            List.append("99 F1")
        elif i =="る":
            List.append("99 F2")
        elif i =="れ":
            List.append("99 F3")
        elif i =="ろ":
            List.append("99 F4")
        elif i =="ゎ":
            List.append("99 F5")
        elif i =="わ":
            List.append("99 F6")
        elif i =="ゐ":
            List.append("99 F7")
        elif i =="ゑ":
            List.append("99 F8")
        elif i =="を":
            List.append("99 F9")
        elif i =="ん":
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
        # Alphabet Start
        # Greek Start
        else:
            List.append(i)
    return " ".join(List)
