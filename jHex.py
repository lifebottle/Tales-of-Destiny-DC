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
        elif i =="剣":
            List.append("9B 4C")
        elif i =="魔":
            List.append("9B 4D")
        elif i =="神":
            List.append("9B 4E")
        elif i =="烈":
            List.append("9B 56")
        elif i =="空":
            List.append("9B 57")
        elif i =="戦":
            List.append("9B 65")
        elif i =="天":
            List.append("9B 6C")
        elif i =="風":
            List.append("9B 73")
        elif i =="王":
            List.append("9B 75")
        elif i =="撃":
            List.append("9B 76")
        elif i =="火":
            List.append("9B 79")
        elif i =="人":
            List.append("9B 7E")
        elif i =="地":
            List.append("9B 81")
        elif i =="御":
            List.append("9B 84")
        elif i =="豪":
            List.append("9B 8B")
        elif i =="疾":
            List.append("9B 8C")
        elif i =="滅":
            List.append("9B AB")
        elif i =="殺":
            List.append("9B AC")
        elif i =="弓":
            List.append("9B AD")
        elif i =="覚":
            List.append("9B B5")
        elif i =="業":
            List.append("9B BB")
        elif i =="激":
            List.append("9B C5")
        elif i =="山":
            List.append("9B C9")
        elif i =="小":
            List.append("9B CA")
        elif i =="入":
            List.append("9B D9")
        elif i =="出":
            List.append("9B DB")
        elif i =="首":
            List.append("9B DC")
        elif i =="都":
            List.append("9B DD")
        elif i =="術":
            List.append("9B E8")
        elif i =="技":
            List.append("9B E9")
        elif i =="上":
            List.append("9B F1")
        elif i =="力":
            List.append("9C 50")
        elif i =="中":
            List.append("9C 53")
        elif i =="定":
            List.append("9C 5F")
        elif i =="今":
            List.append("9C 67")
        elif i =="器":
            List.append("9C 71")
        elif i =="回":
            List.append("9C 77")
        elif i =="晶":
            List.append("9C 79")
        elif i =="合":
            List.append("9C 7B")
        elif i =="白":
            List.append("9C 84")
        elif i =="攻":
            List.append("9C 94")
        elif i =="三":
            List.append("9C 96")
        elif i =="村":
            List.append("9C 9D")
        elif i =="警":
            List.append("9C A8")
        elif i =="丸":
            List.append("9C A9")
        elif i =="状":
            List.append("9C AA")
        elif i =="石":
            List.append("9C B0")
        elif i =="粉":
            List.append("9C B7")
        elif i =="大":
            List.append("9C BA")
        elif i =="線":
            List.append("9C BF")
        elif i =="手":
            List.append("9C C3")
        elif i =="怪":
            List.append("9C C7")
        elif i =="悪":
            List.append("9C D7")
        elif i =="黄":
            List.append("9D C4")
        elif i =="育":
            List.append("9D 51")
        elif i =="液":
            List.append("9D 96")
        elif i =="押":
            List.append("9D BB")
        elif i =="仮":
            List.append("9D D5")
        elif i =="戒":
            List.append("9E 4D")
        elif i =="開":
            List.append("9E 56")
        elif i =="革":
            List.append("9E 81")
        elif i =="楽":
            List.append("9E 84")
        elif i =="冠":
            List.append("9E AC")
        elif i =="鑑":
            List.append("9E D8")
        elif i =="危":
            List.append("9E EE")
        elif i =="揮":
            List.append("9E F7")
        elif i =="巨":
            List.append("9F 8D")
        elif i =="筋":
            List.append("9F D0")
        elif i =="金":
            List.append("9F D8")
        elif i =="銀":
            List.append("9F DA")
        elif i =="形":
            List.append("E0 53")
        elif i =="傑":
            List.append("E0 73")
        elif i =="欠":
            List.append("E0 74")
        elif i =="択":
            List.append("E0 75")
        elif i =="結":
            List.append("E0 77")
        elif i =="堅":
            List.append("E0 83")
        elif i =="険":
            List.append("E0 97")
        elif i =="原":
            List.append("E0 9C")
        elif i =="古":
            List.append("E0 AA")
        elif i =="公":
            List.append("E0 D9")
        elif i =="黒":
            List.append("E1 6C")
        elif i =="鉱":
            List.append("E1 55")
        elif i =="香":
            List.append("E1 5B")
        elif i =="高":
            List.append("E1 5D")
        elif i =="号":
            List.append("E1 60")
        elif i =="最":
            List.append("E1 98")
        elif i =="剤":
            List.append("E1 AC")
        elif i =="指":
            List.append("E1 FC")
        elif i =="紫":
            List.append("E2 4B")
        elif i =="次":
            List.append("E2 64")
        elif i =="漆":
            List.append("E2 81")
        elif i =="実":
            List.append("E2 83")
        elif i =="主":
            List.append("E2 A3")
        elif i =="種":
            List.append("E2 A9")
        elif i =="臭":
            List.append("E2 C3")
        elif i =="勝":
            List.append("E3 4E")
        elif i =="称":
            List.append("E3 75")
        elif i =="飾":
            List.append("E3 9D")
        elif i =="寝":
            List.append("E3 AE")
        elif i =="図":
            List.append("E3 CF")
        elif i =="水":
            List.append("E3 D6")
        elif i =="青":
            List.append("E4 4E")
        elif i =="赤":
            List.append("E4 60")
        elif i =="醒":
            List.append("E4 4D")
        elif i =="草":
            List.append("E4 CF")
        elif i =="体":
            List.append("E5 47")
        elif i =="替":
            List.append("E5 4F")
        elif i =="探":
            List.append("E5 89")
        elif i =="調":
            List.append("E5 E0")
        elif i =="長":
            List.append("E5 E4")
        elif i =="鉄":
            List.append("E6 7B")
        elif i =="闘":
            List.append("E6 C5")
        elif i =="銅":
            List.append("E6 D0")
        elif i =="琶":
            List.append("E7 73")
        elif i =="髪":
            List.append("E7 B4")
        elif i =="琵":
            List.append("E7 F8")
        elif i =="必":
            List.append("E8 49")
        elif i =="品":
            List.append("E8 67")
        elif i =="斧":
            List.append("E8 7D")
        elif i =="物":
            List.append("E8 9D")
        elif i =="噴":
            List.append("E8 A0")
        elif i =="片":
            List.append("E8 C1")
        elif i =="弁":
            List.append("E8 C9")
        elif i =="宝":
            List.append("E8 E1")
        elif i =="棒":
            List.append("E9 48")
        elif i =="防":
            List.append("E9 51")
        elif i =="磨":
            List.append("E9 68")
        elif i =="味":
            List.append("E9 88")
        elif i =="命":
            List.append("E9 A0")
        elif i =="面":
            List.append("E9 AC")
        elif i =="戻":
            List.append("E9 BF")
        elif i =="様":
            List.append("EA 4A")
        elif i =="料":
            List.append("EA 8E")
        elif i =="緑":
            List.append("EA 9B")
        elif i =="練":
            List.append("EA C3")
        elif i =="路":
            List.append("EA CB")
        elif i =="牢":
            List.append("EA D6")
        elif i =="和":
            List.append("EA E3")
        elif i =="話":
            List.append("EA E4")
        elif i =="隕":
            List.append("EB 81")
        elif i =="橙":
            List.append("EB 84")
        # Alphabet Start
        # Greek Start
        else:
            List.append(i)
    return " ".join(List)
