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
        elif i =="爆":
            List.append("9B 4A")
        elif i =="炎":
            List.append("9B 4B")
        elif i =="剣":
            List.append("9B 4C")
        elif i =="魔":
            List.append("9B 4D")
        elif i =="神":
            List.append("9B 4E")
        elif i =="飛":
            List.append("9B 4F")
        elif i =="燕":
            List.append("9B 50")
        elif i =="連":
            List.append("9B 51")
        elif i =="脚":
            List.append("9B 52")
        elif i =="蒼":
            List.append("9B 53")
        elif i =="破":
            List.append("9B 54")
        elif i =="刃":
            List.append("9B 55")
        elif i =="烈":
            List.append("9B 56")
        elif i =="空":
            List.append("9B 57")
        elif i =="斬":
            List.append("9B 58")
        elif i =="真":
            List.append("9B 59")
        elif i =="裂":
            List.append("9B 5A")
        elif i =="虎":
            List.append("9B 5B")
        elif i =="牙":
            List.append("9B 5C")
        elif i =="牙":
            List.append("9B 5D")
        elif i =="屠":
            List.append("9B 5E")
        elif i =="龍":
            List.append("9B 5F")
        elif i =="閃":
            List.append("9B 60")
        elif i =="断":
            List.append("9B 61")
        elif i =="双":
            List.append("9B 62")
        elif i =="獅":
            List.append("9B 63")
        elif i =="子":
            List.append("9B 64")
        elif i =="戦":
            List.append("9B 65")
        elif i =="吼":
            List.append("9B 66")
        elif i =="爪":
            List.append("9B 67")
        elif i =="竜":
            List.append("9B 68")
        elif i =="光":
            List.append("9B 69")
        elif i =="鳳":
            List.append("9B 6A")
        elif i =="凰":
            List.append("9B 6B")
        elif i =="天":
            List.append("9B 6C")
        elif i =="駆":
            List.append("9B 6D")
        elif i =="紅":
            List.append("9B 6E")
        elif i =="蓮":
            List.append("9B 6F")
        elif i =="昇":
            List.append("9B 70")
        elif i =="石":
            List.append("9B 71")
        elif i =="旋":
            List.append("9B 72")
        elif i =="風":
            List.append("9B 73")
        elif i =="陣":
            List.append("9B 74")
        elif i =="王":
            List.append("9B 75")
        elif i =="撃":
            List.append("9B 76")
        elif i =="波":
            List.append("9B 77")
        elif i =="翔":
            List.append("9B 78")
        elif i =="火":
            List.append("9B 79")
        elif i =="剛":
            List.append("9B 7A")
        elif i =="招":
            List.append("9B 7B")
        elif i =="来":
            List.append("9B 7C")
        elif i =="襲":
            List.append("9B 7D")
        elif i =="人":
            List.append("9B 7E")
        elif i =="闇":
            List.append("9B 7F")
        elif i =="闇":
            List.append("9B 80")
        elif i =="地":
            List.append("9B 81")
        elif i =="猛":
            List.append("9B 82")
        elif i =="夜":
            List.append("9B 83")
        elif i =="御":
            List.append("9B 84")
        elif i =="衣":
            List.append("9B 85")
        elif i =="臥":
            List.append("9B 86")
        elif i =="月":
            List.append("9B 87")
        elif i =="虚":
            List.append("9B 88")
        elif i =="崩":
            List.append("9B 89")
        elif i =="封":
            List.append("9B 8A")
        elif i =="豪":
            List.append("9B 8B")
        elif i =="疾":
            List.append("9B 8C")
        elif i =="陽":
            List.append("9B 8D")
        elif i =="雹":
            List.append("9B 8E")
        elif i =="雨":
            List.append("9B 8F")
        elif i =="秋":
            List.append("9B 90")
        elif i =="沙":
            List.append("9B 91")
        elif i =="抜":
            List.append("9B 92")
        elif i =="砕":
            List.append("9B 93")
        elif i =="絶":
            List.append("9B 94")
        elif i =="影":
            List.append("9B 95")
        elif i =="掌":
            List.append("9B 96")
        elif i =="煌":
            List.append("9B 97")
        elif i =="燐":
            List.append("9B 98")
        elif i =="改":
            List.append("9B 99")
        elif i =="雷":
            List.append("9B 9A")
        elif i =="刀":
            List.append("9B 9B")
        elif i =="蹴":
            List.append("9B 9C")
        elif i =="狂":
            List.append("9B 9D")
        elif i =="刹":
            List.append("9B 9E")
        elif i =="槌":
            List.append("9B 9F")
        elif i =="鐘":
            List.append("9B A0")
        elif i =="割":
            List.append("9B A1")
        elif i =="走":
            List.append("9B A2")
        elif i =="衝":
            List.append("9B A3")
        elif i =="森":
            List.append("9B A4")
        elif i =="羅":
            List.append("9B A5")
        elif i =="伐":
            List.append("9B A6")
        elif i =="瞬":
            List.append("9B A7")
        elif i =="咆":
            List.append("9B A8")
        elif i =="迅":
            List.append("9B A9")
        elif i =="死":
            List.append("9B AA")
        elif i =="滅":
            List.append("9B AB")
        elif i =="殺":
            List.append("9B AC")
        elif i =="弓":
            List.append("9B AD")
        elif i =="朱":
            List.append("9B AE")
        elif i =="霧":
            List.append("9B AF")
        elif i =="螺":
            List.append("9B B0")
        elif i =="斜":
            List.append("9B B1")
        elif i =="那":
            List.append("9B B2")
        elif i =="者":
            List.append("9B B3")
        elif i =="目":
            List.append("9B B4")
        elif i =="覚":
            List.append("9B B5")
        elif i =="皇":
            List.append("9B B6")
        elif i =="翼":
            List.append("9B B7")
        elif i =="劇":
            List.append("9B B8")
        elif i =="舞":
            List.append("9B B9")
        elif i =="荒":
            List.append("9B BA")
        elif i =="業":
            List.append("9B BB")
        elif i =="灰":
            List.append("9B BC")
        elif i =="燼":
            List.append("9B BD")
        elif i =="塵":
            List.append("9B BE")
        elif i =="浄":
            List.append("9B BF")
        elif i =="焼":
            List.append("9B C0")
        elif i =="煉":
            List.append("9B C1")
        elif i =="獄":
            List.append("9B C2")
        elif i =="緋":
            List.append("9B C3")
        elif i =="使":
            List.append("9B C4")
        elif i =="激":
            List.append("9B C5")
        elif i =="突":
            List.append("9B C6")
        elif i =="廻":
            List.append("9B C7")
        elif i =="狼":
            List.append("9B C8")
        elif i =="山":
            List.append("9B C9")
        elif i =="小":
            List.append("9B CA")
        elif i =="屋":
            List.append("9B CB")
        elif i =="秘":
            List.append("9B CC")
        elif i =="密":
            List.append("9B CD")
        elif i =="工":
            List.append("9B CE")
        elif i =="場":
            List.append("9B CF")
        elif i =="隠":
            List.append("9B D0")
        elif i =="殿":
            List.append("9B D1")
        elif i =="研":
            List.append("9B D2")
        elif i =="究":
            List.append("9B D3")
        elif i =="所":
            List.append("9B D4")
        elif i =="海":
            List.append("9B D5")
        elif i =="底":
            List.append("9B D6")
        elif i =="洞":
            List.append("9B D7")
        elif i =="窟":
            List.append("9B D8")
        elif i =="入":
            List.append("9B D9")
        elif i =="口":
            List.append("9B DA")
        elif i =="出":
            List.append("9B DB")
        elif i =="首":
            List.append("9B DC")
        elif i =="都":
            List.append("9B DD")
        elif i =="領":
            List.append("9B DE")
        elif i =="灼":
            List.append("9B DF")
        elif i =="拳":
            List.append("9B E0")
        elif i =="逃":
            List.append("9B E1")
        elif i =="敗":
            List.append("9B E2")
        elif i =="北":
            List.append("9B E3")
        elif i =="幻":
            List.append("9B E4")
        elif i =="重":
            List.append("9B E5")
        elif i =="覇":
            List.append("9B E6")
        elif i =="道":
            List.append("9B E7")
        elif i =="術":
            List.append("9B E8")
        elif i =="技":
            List.append("9B E9")
        elif i =="装":
            List.append("9B EA")
        elif i =="備":
            List.append("9B EB")
        elif i =="作":
            List.append("9B EC")
        elif i =="星":
            List.append("9B ED")
        elif i =="召":
            List.append("9B EE")
        elif i =="集":
            List.append("9B EF")
        elif i =="上":
            List.append("9B F1")
        elif i =="脳":
            List.append("9B F2")
        elif i =="世":
            List.append("9B F3")
        elif i =="界":
            List.append("9B F4")
        elif i =="分":
            List.append("9B F5")
        elif i =="精":
            List.append("9B F6")
        elif i =="統":
            List.append("9B F7")
        elif i =="一":
            List.append("9B F8")
        elif i =="反":
            List.append("9B F9")
        elif i =="煙":
            List.append("9B FA")
        elif i =="怒":
            List.append("9B FB")
        elif i =="哮":
            List.append("9B FC")
        elif i =="投":
            List.append("9B FD")
        elif i =="活":
            List.append("9B FE")
        elif i =="心":
            List.append("9B FF")
        elif i =="燼":
            List.append("9C 00")
        elif i =="都":
            List.append("9C 20")
        elif i =="領":
            List.append("9C 21")
        elif i =="灼":
            List.append("9C 22")
        elif i =="拳":
            List.append("9C 23")
        elif i =="逃":
            List.append("9C 24")
        elif i =="敗":
            List.append("9C 25")
        elif i =="北":
            List.append("9C 26")
        elif i =="幻":
            List.append("9C 27")
        elif i =="重":
            List.append("9C 28")
        elif i =="覇":
            List.append("9C 29")
        elif i =="道":
            List.append("9C 2A")
        elif i =="術":
            List.append("9C 2B")
        elif i =="技":
            List.append("9C 2C")
        elif i =="装":
            List.append("9C 2D")
        elif i =="備":
            List.append("9C 2E")
        elif i =="作":
            List.append("9C 2F")
        elif i =="星":
            List.append("9C 30")
        elif i =="召":
            List.append("9C 31")
        elif i =="集":
            List.append("9C 32")
        elif i =="叩":
            List.append("9C 33")
        elif i =="上":
            List.append("9C 34")
        elif i =="脳":
            List.append("9C 35")
        elif i =="世":
            List.append("9C 36")
        elif i =="界":
            List.append("9C 37")
        elif i =="分":
            List.append("9C 38")
        elif i =="精":
            List.append("9C 39")
        elif i =="統":
            List.append("9C 3A")
        elif i =="一":
            List.append("9C 3B")
        elif i =="反":
            List.append("9C 3C")
        elif i =="煙":
            List.append("9C 3D")
        elif i =="怒":
            List.append("9C 3E")
        elif i =="哮":
            List.append("9C 3F")
        elif i =="投":
            List.append("9C 40")
        elif i =="活":
            List.append("9C 41")
        elif i =="心":
            List.append("9C 42")
        elif i =="応":
            List.append("9C 43")
        elif i =="援":
            List.append("9C 44")
        elif i =="要":
            List.append("9C 45")
        elif i =="請":
            List.append("9C 46")
        elif i =="肩":
            List.append("9C 47")
        elif i =="部":
            List.append("9C 48")
        elif i =="再":
            List.append("9C 49")
        elif i =="生":
            List.append("9C 4A")
        elif i =="頭":
            List.append("9C 4B")
        elif i =="化":
            List.append("9C 4C")
        elif i =="吐":
            List.append("9C 4D")
        elif i =="喚":
            List.append("9C 4E")
        elif i =="墨":
            List.append("9C 4F")
        elif i =="力":
            List.append("9C 50")
        elif i =="足":
            List.append("9C 51")
        elif i =="払":
            List.append("9C 52")
        elif i =="中":
            List.append("9C 53")
        elif i =="獲":
            List.append("9C 54")
        elif i =="得":
            List.append("9C 55")
        elif i =="仙":
            List.append("9C 56")
        elif i =="庵":
            List.append("9C 57")
        elif i =="敵":
            List.append("9C 58")
        elif i =="弱":
            List.append("9C 59")
        elif i =="点":
            List.append("9C 5A")
        elif i =="痛":
            List.append("9C 5B")
        elif i =="用":
            List.append("9C 5C")
        elif i =="用":
            List.append("9C 5D")
        elif i =="設":
            List.append("9C 5E")
        elif i =="定":
            List.append("9C 5F")
        elif i =="詳":
            List.append("9C 60")
        elif i =="細":
            List.append("9C 61")
        elif i =="補":
            List.append("9C 62")
        elif i =="充":
            List.append("9C 63")
        elif i =="溜":
            List.append("9C 64")
        elif i =="多":
            List.append("9C 65")
        elif i =="彩":
            List.append("9C 66")
        elif i =="今":
            List.append("9C 67")
        elif i =="携":
            List.append("9C 68")
        elif i =="特":
            List.append("9C 69")
        elif i =="情":
            List.append("9C 6A")
        elif i =="報":
            List.append("9C 6B")
        elif i =="続":
            List.append("9C 6C")
        elif i =="壁":
            List.append("9C 6D")
        elif i =="跳":
            List.append("9C 6E")
        elif i =="躍":
            List.append("9C 6F")
        elif i =="武":
            List.append("9C 70")
        elif i =="器":
            List.append("9C 71")
        elif i =="軽":
            List.append("9C 72")
        elif i =="難":
            List.append("9C 73")
        elif i =="易":
            List.append("9C 74")
        elif i =="度":
            List.append("9C 75")
        elif i =="自":
            List.append("9C 76")
        elif i =="回":
            List.append("9C 77")
        elif i =="復":
            List.append("9C 78")
        elif i =="晶":
            List.append("9C 79")
        elif i =="間":
            List.append("9C 7A")
        elif i =="合":
            List.append("9C 7B")
        elif i =="達":
            List.append("9C 7C")
        elif i =="華":
            List.append("9C 7D")
        elif i =="射":
            List.append("9C 7E")
        elif i =="漢":
            List.append("9C 7F")
        elif i =="漢":
            List.append("9C 80")
        elif i =="立":
            List.append("9C 81")
        elif i =="支":
            List.append("9C 82")
        elif i =="歌":
            List.append("9C 83")
        elif i =="白":
            List.append("9C 84")
        elif i =="薙":
            List.append("9C 85")
        elif i =="凍":
            List.append("9C 86")
        elif i =="氷":
            List.append("9C 89")
        elif i =="発":
            List.append("9C 8A")
        elif i =="掘":
            List.append("9C 8B")
        elif i =="食":
            List.append("9C 8C")
        elif i =="別":
            List.append("9C 8D")
        elif i =="腹":
            List.append("9C 8E")
        elif i =="負":
            List.append("9C 8F")
        elif i =="磁":
            List.append("9C 90")
        elif i =="院":
            List.append("9C 91")
        elif i =="政":
            List.append("9C 92")
        elif i =="無":
            List.append("9C 93")
        elif i =="攻":
            List.append("9C 94")
        elif i =="震":
            List.append("9C 95")
        elif i =="三":
            List.append("9C 96")
        elif i =="二":
            List.append("9C 97")
        elif i =="段":
            List.append("9C 98")
        elif i =="返":
            List.append("9C 99")
        elif i =="国":
            List.append("9C 9A")
        elif i =="境":
            List.append("9C 9B")
        elif i =="街":
            List.append("9C 9C")
        elif i =="村":
            List.append("9C 9D")
        elif i =="港":
            List.append("9C 9E")
        elif i =="町":
            List.append("9C 9F")
        elif i =="市":
            List.append("9C A0")
        elif i =="暴":
            List.append("9C A1")
        elif i =="旅":
            List.append("9C A2")
        elif i =="行":
            List.append("9C A3")
        elif i =="基":
            List.append("9C A4")
        elif i =="穴":
            List.append("9C A5")
        elif i =="兜":
            List.append("9C A6")
        elif i =="転":
            List.append("9C A7")
        elif i =="警":
            List.append("9C A8")
        elif i =="丸":
            List.append("9C A9")
        elif i =="状":
            List.append("9C AA")
        elif i =="態":
            List.append("9C AB")
        elif i =="異":
            List.append("9C AC")
        elif i =="常":
            List.append("9C AD")
        elif i =="強":
            List.append("9C AE")
        elif i =="落":
            List.append("9C AF")
        elif i =="熱":
            List.append("9C B0")
        elif i =="化":
            List.append("9C B1")
        elif i =="睡":
            List.append("9C B2")
        elif i =="衰":
            List.append("9C B3")
        elif i =="弱":
            List.append("9C B4")
        elif i =="印":
            List.append("9C B5")
        elif i =="燐":
            List.append("9C B6")
        elif i =="粉":
            List.append("9C B7")
        elif i =="動":
            List.append("9C B8")
        elif i =="砲":
            List.append("9C B9")
        elif i =="大":
            List.append("9C BA")
        elif i =="吸":
            List.append("9C BB")
        elif i =="込":
            List.append("9C BC")
        elif i =="進":
            List.append("9C BD")
        elif i =="壊":
            List.append("9C BE")
        elif i =="線":
            List.append("9C BF")
        elif i =="乱":
            List.append("9C C0")
        elif i =="胞":
            List.append("9C C1")
        elif i =="両":
            List.append("9C C2")
        elif i =="手":
            List.append("9C C3")
        elif i =="弾":
            List.append("9C C4")
        elif i =="千":
            List.append("9C C5")
        elif i =="引":
            List.append("9C C6")
        elif i =="怪":
            List.append("9C C7")
        elif i =="槍":
            List.append("9C C8")
        elif i =="五":
            List.append("9C C9")
        elif i =="十":
            List.append("9C CA")
        elif i =="亜":
            List.append("9C CB")
        elif i =="唖":
            List.append("9C CC")
        elif i =="娃":
            List.append("9C CD")
        elif i =="阿":
            List.append("9C CE")
        elif i =="哀":
            List.append("9C CF")
        elif i =="愛":
            List.append("9C D0")
        elif i =="挨":
            List.append("9C D1")
        elif i =="姶":
            List.append("9C D2")
        elif i =="逢":
            List.append("9C D3")
        elif i =="葵":
            List.append("9C D4")
        elif i =="茜":
            List.append("9C D5")
        elif i =="穐":
            List.append("9C D6")
        elif i =="悪":
            List.append("9C D7")
        elif i =="握":
            List.append("9C D8")
        elif i =="渥":
            List.append("9C D9")
        elif i =="旭":
            List.append("9C DA")
        elif i =="葦":
            List.append("9C DB")
        elif i =="芦":
            List.append("9C DC")
        elif i =="鯵":
            List.append("9C DD")
        elif i =="梓":
            List.append("9C DE")
        elif i =="圧":
            List.append("9C DF")
        elif i =="鞍":
            List.append("9C F0")
        elif i =="杏":
            List.append("9C F1")
        elif i =="以":
            List.append("9C F2")
        elif i =="伊":
            List.append("9C F3")
        elif i =="位":
            List.append("9C F4")
        elif i =="依":
            List.append("9C F5")
        elif i =="偉":
            List.append("9C F6")
        elif i =="囲":
            List.append("9C F7")
        elif i =="夷":
            List.append("9C F8")
        elif i =="委":
            List.append("9C F9")
        elif i =="威":
            List.append("9C FA")
        elif i =="尉":
            List.append("9C FB")
        elif i =="惟":
            List.append("9C FC")
        elif i =="意":
            List.append("9C FD")
        elif i =="慰":
            List.append("9C FE")
        elif i =="椅":
            List.append("9C FF")
        elif i =="育":
            List.append("9D 51")
        elif i =="液":
            List.append("9D 96")
        elif i =="押":
            List.append("9D BB")
        elif i =="黄":
            List.append("9D C4")
        elif i =="音":
            List.append("9D D3")
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
        elif i =="記":
            List.append("9F 4D")
        elif i =="牛":
            List.append("9F 8A")
        elif i =="巨":
            List.append("9F 8D")
        elif i =="魚":
            List.append("9F 97")
        elif i =="興":
            List.append("9F B4")
        elif i =="鏡":
            List.append("9F B7")
        elif i =="筋":
            List.append("9F D0")
        elif i =="金":
            List.append("9F D8")
        elif i =="銀":
            List.append("9F DA")
        elif i =="串":
            List.append("9F ED")
        elif i =="型":
            List.append("E0 51")
        elif i =="形":
            List.append("E0 53")
        elif i =="傑":
            List.append("E0 73")
        elif i =="欠":
            List.append("E0 74")
        elif i =="決":
            List.append("E0 75")
        elif i =="結":
            List.append("E0 77")
        elif i =="現":
            List.append("E0 82")
        elif i =="堅":
            List.append("E0 83")
        elif i =="険":
            List.append("E0 97")
        elif i =="原":
            List.append("E0 9C")
        elif i =="減":
            List.append("E0 9F")
        elif i =="現":
            List.append("E0 A2")
        elif i =="古":
            List.append("E0 AA")
        elif i =="公":
            List.append("E0 D9")
        elif i =="好":
            List.append("E0 E3")
        elif i =="航":
            List.append("E1 4E")
        elif i =="鉱":
            List.append("E1 55")
        elif i =="香":
            List.append("E1 5B")
        elif i =="高":
            List.append("E1 5D")
        elif i =="号":
            List.append("E1 60")
        elif i =="黒":
            List.append("E1 6C")
        elif i =="砂":
            List.append("E1 8F")
        elif i =="最":
            List.append("E1 98")
        elif i =="裁":
            List.append("E1 A9")
        elif i =="剤":
            List.append("E1 AC")
        elif i =="在":
            List.append("E1 AD")
        elif i =="刺":
            List.append("E1 EF")
        elif i =="司":
            List.append("E1 F0")
        elif i =="指":
            List.append("E1 FC")
        elif i =="止":
            List.append("E2 45")
        elif i =="紫":
            List.append("E2 4B")
        elif i =="持":
            List.append("E2 62")
        elif i =="次":
            List.append("E2 64")
        elif i =="示":
            List.append("E2 6A")
        elif i =="漆":
            List.append("E2 81")
        elif i =="実":
            List.append("E2 83")
        elif i =="舎":
            List.append("E2 8C")
        elif i =="主":
            List.append("E2 A3")
        elif i =="種":
            List.append("E2 A9")
        elif i =="寿":
            List.append("E2 B0")
        elif i =="終":
            List.append("E2 C0")
        elif i =="臭":
            List.append("E2 C3")
        elif i =="舟":
            List.append("E2 C4")
        elif i =="柔":
            List.append("E2 D1")
        elif i =="縮":
            List.append("E2 DC")
        elif i =="書":
            List.append("E3 40")
        elif i =="勝":
            List.append("E3 4E")
        elif i =="称":
            List.append("E3 75")
        elif i =="証":
            List.append("E3 81")
        elif i =="飾":
            List.append("E3 9D")
        elif i =="色":
            List.append("E3 A4")
        elif i =="寝":
            List.append("E3 AE")
        elif i =="新":
            List.append("E3 B2")
        elif i =="親":
            List.append("E3 BE")
        elif i =="身":
            List.append("E3 C0")
        elif i =="図":
            List.append("E3 CF")
        elif i =="水":
            List.append("E3 D6")
        elif i =="性":
            List.append("E3 F9")
        elif i =="正":
            List.append("E4 42")
        elif i =="盛":
            List.append("E4 45")
        elif i =="醒":
            List.append("E4 4D")
        elif i =="青":
            List.append("E4 4E")
        elif i =="赤":
            List.append("E4 60")
        elif i =="切":
            List.append("E4 64")
        elif i =="雪":
            List.append("E4 6C")
        elif i =="鮮":
            List.append("E4 90")
        elif i =="草":
            List.append("E4 CF")
        elif i =="属":
            List.append("E4 E9")
        elif i =="打":
            List.append("E5 40")
        elif i =="体":
            List.append("E5 47")
        elif i =="替":
            List.append("E5 4F")
        elif i =="探":
            List.append("E5 89")
        elif i =="炭":
            List.append("E5 8E")
        elif i =="短":
            List.append("E5 8F")
        elif i =="置":
            List.append("E5 A6")
        elif i =="茶":
            List.append("E5 B3")
        elif i =="調":
            List.append("E5 E0")
        elif i =="長":
            List.append("E5 E4")
        elif i =="直":
            List.append("E5 E9")
        elif i =="通":
            List.append("E5 F5")
        elif i =="漬":
            List.append("E5 FB")
        elif i =="停":
            List.append("E6 4F")
        elif i =="鉄":
            List.append("E6 7B")
        elif i =="店":
            List.append("E6 80")
        elif i =="田":
            List.append("E6 88")
        elif i =="島":
            List.append("E6 A4")
        elif i =="闘":
            List.append("E6 C5")
        elif i =="銅":
            List.append("E6 D0")
        elif i =="読":
            List.append("E6 DA")
        elif i =="鍋":
            List.append("E6 F7")
        elif i =="肉":
            List.append("E7 48")
        elif i =="年":
            List.append("E7 5A")
        elif i =="琶":
            List.append("E7 73")
        elif i =="漠":
            List.append("E7 A0")
        elif i =="髪":
            List.append("E7 B4")
        elif i =="半":
            List.append("E7 BF")
        elif i =="版":
            List.append("E7 C7")
        elif i =="避":
            List.append("E7 F0")
        elif i =="琵":
            List.append("E7 F8")
        elif i =="必":
            List.append("E8 49")
        elif i =="表":
            List.append("E8 59")
        elif i =="品":
            List.append("E8 67")
        elif i =="斧":
            List.append("E8 7D")
        elif i =="物":
            List.append("E8 9D")
        elif i =="噴":
            List.append("E8 A0")
        elif i =="並":
            List.append("E8 B3")
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
        elif i =="僕":
            List.append("E9 54")
        elif i =="磨":
            List.append("E9 68")
        elif i =="味":
            List.append("E9 88")
        elif i =="命":
            List.append("E9 A0")
        elif i =="明":
            List.append("E9 A1")
        elif i =="面":
            List.append("E9 AC")
        elif i =="戻":
            List.append("E9 BF")
        elif i =="様":
            List.append("EA 4A")
        elif i =="率":
            List.append("EA 7A")
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
        elif i =="篭":
            List.append("EA D7")
        elif i =="和":
            List.append("EA E3")
        elif i =="話":
            List.append("EA E4")
        elif i =="丼":
            List.append("EB 80")
        elif i =="隕":
            List.append("EB 81")
        elif i =="橙":
            List.append("EB 84")
        # Alphabet Start
        # Greek Start
        else:
            List.append(i)
    return " ".join(List)
