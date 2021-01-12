def HexToJpn(word):
    Hex = list(word)
    List = []
    for i in range(0, len(Hex)-1, 6):
        if(i+6 > len(Hex)):
            break
        # HIRAGANA
        if(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 A2"):
            List.append(".")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 A7"):
            List.append("ー")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 A8"):
            List.append("ぁ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 A9"):
            List.append("あ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 AA"):
            List.append("ぃ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 AB"):
            List.append("い")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 AC"):
            List.append("ぅ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 AD"):
            List.append("う")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 AE"):
            List.append("ぇ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 AF"):
            List.append("え")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B0"):
            List.append("ぉ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B1"):
            List.append("お")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B2"):
            List.append("か")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B3"):
            List.append("が")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B4"):
            List.append("き")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B5"):
            List.append("ぎ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B6"):
            List.append("く")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B7"):
            List.append("ぐ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B8"):
            List.append("け")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 B9"):
            List.append("げ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 BA"):
            List.append("こ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 BB"):
            List.append("ご")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 BC"):
            List.append("さ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 BD"):
            List.append("ざ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 BE"):
            List.append("し")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 BF"):
            List.append("じ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C0"):
            List.append("す")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C1"):
            List.append("ず")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C2"):
            List.append("せ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C3"):
            List.append("ぜ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C4"):
            List.append("そ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C5"):
            List.append("ぞ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C6"):
            List.append("た")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C7"):
            List.append("だ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C8"):
            List.append("ち")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 C9"):
            List.append("ぢ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 CA"):
            List.append("っ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 CB"):
            List.append("つ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 CC"):
            List.append("づ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 CD"):
            List.append("て")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 CE"):
            List.append("で")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 CF"):
            List.append("と")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D0"):
            List.append("ど")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D1"):
            List.append("な")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D2"):
            List.append("に")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D3"):
            List.append("ぬ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D4"):
            List.append("ね")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D5"):
            List.append("の")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D6"):
            List.append("は")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D7"):
            List.append("ば")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D8"):
            List.append("ぱ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 D9"):
            List.append("ひ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 DA"):
            List.append("び")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 DB"):
            List.append("ぴ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 DC"):
            List.append("ふ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 DD"):
            List.append("ぶ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 DE"):
            List.append("ぷ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 DF"):
            List.append("へ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E0"):
            List.append("べ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E1"):
            List.append("ぺ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E2"):
            List.append("ほ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E3"):
            List.append("ぼ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E4"):
            List.append("ぽ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E5"):
            List.append("ま")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E6"):
            List.append("み")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E7"):
            List.append("む")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E8"):
            List.append("め")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 E9"):
            List.append("も")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 EA"):
            List.append("ゃ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 EB"):
            List.append("や")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 EC"):
            List.append("ゅ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 ED"):
            List.append("ゆ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 EE"):
            List.append("ょ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 EF"):
            List.append("よ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F0"):
            List.append("ら")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F1"):
            List.append("り")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F2"):
            List.append("る")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F3"):
            List.append("れ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F4"):
            List.append("ろ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F5"):
            List.append("ゎ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F6"):
            List.append("わ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F7"):
            List.append("ゐ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F8"):
            List.append("ゑ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 F9"):
            List.append("を")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 FA"):
            List.append("ん")
        #KATAKANA
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 A7"):
            List.append("ー")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 FB"):
            List.append("ァ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "99 FC"):
            List.append("ア")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 40"):
            List.append("ィ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 41"):
            List.append("イ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 42"):
            List.append("ゥ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 43"):
            List.append("ウ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 44"):
            List.append("ェ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 45"):
            List.append("エ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 46"):
            List.append("ォ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 47"):
            List.append("オ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 48"):
            List.append("カ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 49"):
            List.append("ガ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 4A"):
            List.append("キ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 4B"):
            List.append("ギ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 4C"):
            List.append("ク")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 4D"):
            List.append("グ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 4E"):
            List.append("ケ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 4F"):
            List.append("ゲ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 50"):
            List.append("コ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 51"):
            List.append("ゴ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 52"):
            List.append("サ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 53"):
            List.append("ザ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 54"):
            List.append("シ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 55"):
            List.append("ジ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 56"):
            List.append("ス")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 57"):
            List.append("ズ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 58"):
            List.append("セ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 59"):
            List.append("ゼ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 5A"):
            List.append("ソ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 5B"):
            List.append("ゾ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 5D"):
            List.append("タ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 5E"):
            List.append("ダ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 5F"):
            List.append("チ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 60"):
            List.append("ヂ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 61"):
            List.append("ッ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 62"):
            List.append("ツ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 63"):
            List.append("ヅ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 64"):
            List.append("テ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 65"):
            List.append("デ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 66"):
            List.append("ト")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 67"):
            List.append("ド")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 68"):
            List.append("ナ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 69"):
            List.append("ニ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 6A"):
            List.append("ヌ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 6B"):
            List.append("ネ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 6C"):
            List.append("ノ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 6D"):
            List.append("ハ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 6E"):
            List.append("バ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 6F"):
            List.append("パ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 70"):
            List.append("ヒ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 71"):
            List.append("ビ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 72"):
            List.append("ピ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 73"):
            List.append("フ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 74"):
            List.append("ブ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 75"):
            List.append("プ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 76"):
            List.append("ヘ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 77"):
            List.append("ベ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 78"):
            List.append("ペ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 79"):
            List.append("ホ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 7A"):
            List.append("ボ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 7B"):
            List.append("ポ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 7C"):
            List.append("マ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 7D"):
            List.append("ミ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 7E"):
            List.append("ム")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 80"):
            List.append("メ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 81"):
            List.append("モ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 82"):
            List.append("ャ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 83"):
            List.append("ヤ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 84"):
            List.append("ュ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 85"):
            List.append("ユ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 86"):
            List.append("ョ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 87"):
            List.append("ヨ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 88"):
            List.append("ラ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 89"):
            List.append("リ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 8A"):
            List.append("ル")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 8B"):
            List.append("レ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 8C"):
            List.append("ロ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 8D"):
            List.append("ヮ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 8E"):
            List.append("ワ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 8F"):
            List.append("ヰ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 90"):
            List.append("ヱ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 91"):
            List.append("ヲ")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 92"):
            List.append("ン")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9A 93"):
            List.append("ヴ")
        #KANJI
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 4A"):
            List.append("爆")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 4B"):
            List.append("炎")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 4C"):
            List.append("剣")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 4D"):
            List.append("魔")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 4E"):
            List.append("神")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 4F"):
            List.append("飛")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 50"):
            List.append("燕")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 51"):
            List.append("連")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 52"):
            List.append("脚")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 53"):
            List.append("蒼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 54"):
            List.append("破")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 55"):
            List.append("刃")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 56"):
            List.append("烈")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 57"):
            List.append("空")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 58"):
            List.append("斬")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 59"):
            List.append("真")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 5A"):
            List.append("裂")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 5B"):
            List.append("虎")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 5C"):
            List.append("牙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 5D"):
            List.append("牙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 5E"):
            List.append("屠")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 5F"):
            List.append("龍")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 60"):
            List.append("閃")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 61"):
            List.append("断")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 62"):
            List.append("双")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 63"):
            List.append("獅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 64"):
            List.append("子")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 65"):
            List.append("戦")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 66"):
            List.append("吼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 67"):
            List.append("爪")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 68"):
            List.append("竜")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 69"):
            List.append("光")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 6A"):
            List.append("鳳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 6B"):
            List.append("凰")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 6C"):
            List.append("天")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 6D"):
            List.append("駆")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 6E"):
            List.append("紅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 6F"):
            List.append("蓮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 70"):
            List.append("昇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 71"):
            List.append("石")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 72"):
            List.append("旋")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 73"):
            List.append("風")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 74"):
            List.append("陣")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 75"):
            List.append("王")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 76"):
            List.append("撃")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 77"):
            List.append("波")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 78"):
            List.append("翔")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 79"):
            List.append("火")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 7A"):
            List.append("剛")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 7B"):
            List.append("招")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 7C"):
            List.append("来")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 7D"):
            List.append("襲")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 7E"):
            List.append("人")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 7F"):
            List.append("闇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 80"):
            List.append("闇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 81"):
            List.append("地")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 82"):
            List.append("猛")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 83"):
            List.append("夜")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 84"):
            List.append("御")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 85"):
            List.append("衣")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 86"):
            List.append("臥")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 87"):
            List.append("月")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 88"):
            List.append("虚")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 89"):
            List.append("崩")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 8A"):
            List.append("封")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 8B"):
            List.append("豪")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 8C"):
            List.append("疾")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 8D"):
            List.append("陽")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 8E"):
            List.append("雹")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 8F"):
            List.append("雨")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 90"):
            List.append("秋")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 91"):
            List.append("沙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 92"):
            List.append("抜")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 93"):
            List.append("砕")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 94"):
            List.append("絶")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 95"):
            List.append("影")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 96"):
            List.append("掌")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 97"):
            List.append("煌")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 98"):
            List.append("燐")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 99"):
            List.append("改")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 9A"):
            List.append("雷")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 9B"):
            List.append("刀")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 9C"):
            List.append("蹴")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 9D"):
            List.append("狂")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 9E"):
            List.append("刹")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B 9F"):
            List.append("槌")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A0"):
            List.append("鐘")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A1"):
            List.append("割")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A2"):
            List.append("走")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A3"):
            List.append("衝")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A4"):
            List.append("森")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A5"):
            List.append("羅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A6"):
            List.append("伐")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A7"):
            List.append("瞬")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A8"):
            List.append("咆")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B A9"):
            List.append("迅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B AA"):
            List.append("死")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B AB"):
            List.append("滅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B AC"):
            List.append("殺")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B AD"):
            List.append("弓")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B AE"):
            List.append("朱")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B AF"):
            List.append("霧")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B0"):
            List.append("螺")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B1"):
            List.append("斜")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B2"):
            List.append("那")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B3"):
            List.append("者")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B4"):
            List.append("目")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B5"):
            List.append("覚")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B6"):
            List.append("皇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B7"):
            List.append("翼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B8"):
            List.append("劇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B B9"):
            List.append("舞")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B BA"):
            List.append("荒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B BB"):
            List.append("業")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B BC"):
            List.append("灰")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B BD"):
            List.append("燼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B BE"):
            List.append("塵")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B BF"):
            List.append("浄")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C0"):
            List.append("焼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C1"):
            List.append("煉")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C2"):
            List.append("獄")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C3"):
            List.append("緋")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C4"):
            List.append("使")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C5"):
            List.append("激")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C6"):
            List.append("突")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C7"):
            List.append("廻")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C8"):
            List.append("狼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B C9"):
            List.append("山")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B CA"):
            List.append("小")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B CB"):
            List.append("屋")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B CC"):
            List.append("秘")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B CD"):
            List.append("密")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B CE"):
            List.append("工")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B CF"):
            List.append("場")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D0"):
            List.append("隠")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D1"):
            List.append("殿")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D2"):
            List.append("研")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D3"):
            List.append("究")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D4"):
            List.append("所")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D5"):
            List.append("海")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D6"):
            List.append("底")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D7"):
            List.append("洞")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D8"):
            List.append("窟")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B D9"):
            List.append("入")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B DA"):
            List.append("口")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B DB"):
            List.append("出")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B DC"):
            List.append("首")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B DD"):
            List.append("都")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B DE"):
            List.append("領")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B DF"):
            List.append("灼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E0"):
            List.append("拳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E1"):
            List.append("逃")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E2"):
            List.append("敗")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E3"):
            List.append("北")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E4"):
            List.append("幻")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E5"):
            List.append("重")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E6"):
            List.append("覇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E7"):
            List.append("道")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E8"):
            List.append("術")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B E9"):
            List.append("技")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B EA"):
            List.append("装")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B EB"):
            List.append("備")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B EC"):
            List.append("作")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B ED"):
            List.append("星")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B EE"):
            List.append("召")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B EF"):
            List.append("集")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F1"):
            List.append("上")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F2"):
            List.append("脳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F3"):
            List.append("世")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F4"):
            List.append("界")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F5"):
            List.append("分")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F6"):
            List.append("精")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F7"):
            List.append("統")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F8"):
            List.append("一")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B F9"):
            List.append("反")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B FA"):
            List.append("煙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B FB"):
            List.append("怒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B FC"):
            List.append("哮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B FD"):
            List.append("投")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B FE"):
            List.append("活")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9B FF"):
            List.append("心")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 00"):
            List.append("燼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 20"):
            List.append("都")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 21"):
            List.append("領")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 22"):
            List.append("灼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 23"):
            List.append("拳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 24"):
            List.append("逃")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 25"):
            List.append("敗")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 26"):
            List.append("北")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 27"):
            List.append("幻")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 28"):
            List.append("重")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 29"):
            List.append("覇")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 2A"):
            List.append("道")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 2B"):
            List.append("術")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 2C"):
            List.append("技")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 2D"):
            List.append("装")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 2E"):
            List.append("備")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 2F"):
            List.append("作")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 30"):
            List.append("星")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 31"):
            List.append("召")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 32"):
            List.append("集")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 33"):
            List.append("叩")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 34"):
            List.append("上")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 35"):
            List.append("脳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 36"):
            List.append("世")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 37"):
            List.append("界")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 38"):
            List.append("分")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 39"):
            List.append("精")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 3A"):
            List.append("統")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 3B"):
            List.append("一")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 3C"):
            List.append("反")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 3D"):
            List.append("煙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 3E"):
            List.append("怒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 3F"):
            List.append("哮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 40"):
            List.append("投")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 41"):
            List.append("活")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 42"):
            List.append("心")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 43"):
            List.append("応")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 44"):
            List.append("援")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 45"):
            List.append("要")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 46"):
            List.append("請")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 47"):
            List.append("肩")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 48"):
            List.append("部")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 49"):
            List.append("再")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 4A"):
            List.append("生")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 4B"):
            List.append("頭")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 4C"):
            List.append("化")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 4D"):
            List.append("吐")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 4E"):
            List.append("喚")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 4F"):
            List.append("墨")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 50"):
            List.append("力")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 51"):
            List.append("足")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 52"):
            List.append("払")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 53"):
            List.append("中")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 54"):
            List.append("獲")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 55"):
            List.append("得")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 56"):
            List.append("仙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 57"):
            List.append("庵")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 58"):
            List.append("敵")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 59"):
            List.append("弱")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 5A"):
            List.append("点")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 5B"):
            List.append("痛")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 5C"):
            List.append("用")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 5D"):
            List.append("用")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 5E"):
            List.append("設")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 5F"):
            List.append("定")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 60"):
            List.append("詳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 61"):
            List.append("細")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 62"):
            List.append("補")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 63"):
            List.append("充")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 64"):
            List.append("溜")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 65"):
            List.append("多")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 66"):
            List.append("彩")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 67"):
            List.append("今")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 68"):
            List.append("携")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 69"):
            List.append("特")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 6A"):
            List.append("情")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 6B"):
            List.append("報")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 6C"):
            List.append("続")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 6D"):
            List.append("壁")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 6E"):
            List.append("跳")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 6F"):
            List.append("躍")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 70"):
            List.append("武")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 71"):
            List.append("器")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 72"):
            List.append("軽")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 73"):
            List.append("難")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 74"):
            List.append("易")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 75"):
            List.append("度")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 76"):
            List.append("自")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 77"):
            List.append("回")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 78"):
            List.append("復")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 79"):
            List.append("晶")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 7A"):
            List.append("間")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 7B"):
            List.append("合")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 7C"):
            List.append("達")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 7D"):
            List.append("華")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 7E"):
            List.append("射")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 7F"):
            List.append("漢")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 84"):
            List.append("白")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 85"):
            List.append("薙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 86"):
            List.append("凍")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 89"):
            List.append("氷")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 94"):
            List.append("攻")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 95"):
            List.append("震")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 96"):
            List.append("三")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 9A"):
            List.append("国")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C 9D"):
            List.append("村")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C A3"):
            List.append("行")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C A8"):
            List.append("警")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C A9"):
            List.append("丸")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C AA"):
            List.append("状")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B0"):
            List.append("熱")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B2"):
            List.append("睡")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B3"):
            List.append("衰")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B4"):
            List.append("弱")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B5"):
            List.append("印")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B7"):
            List.append("粉")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C B8"):
            List.append("動")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C BA"):
            List.append("大")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C BF"):
            List.append("線")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C C3"):
            List.append("手")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C C7"):
            List.append("怪")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C D7"):
            List.append("悪")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C DF"):
            List.append("圧")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9C F4"):
            List.append("位")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9D 51"):
            List.append("育")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9D 96"):
            List.append("液")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9D BB"):
            List.append("押")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9D C4"):
            List.append("黄")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9D D3"):
            List.append("音")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9D D5"):
            List.append("仮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E 4D"):
            List.append("戒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E 56"):
            List.append("開")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E 81"):
            List.append("革")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E 84"):
            List.append("楽")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E AC"):
            List.append("冠")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E D8"):
            List.append("鑑")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E EE"):
            List.append("危")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9E F7"):
            List.append("揮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F 4D"):
            List.append("記")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F 8A"):
            List.append("牛")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F 8D"):
            List.append("巨")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F 97"):
            List.append("魚")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F B4"):
            List.append("興")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F B7"):
            List.append("鏡")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F D0"):
            List.append("筋")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F D8"):
            List.append("金")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F DA"):
            List.append("銀")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "9F ED"):
            List.append("串")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 51"):
            List.append("型")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 53"):
            List.append("形")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 73"):
            List.append("傑")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 74"):
            List.append("欠")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 75"):
            List.append("決")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 77"):
            List.append("結")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 82"):
            List.append("現")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 83"):
            List.append("堅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 97"):
            List.append("険")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 9C"):
            List.append("原")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 9F"):
            List.append("減")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 A2"):
            List.append("現")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 AA"):
            List.append("古")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 D9"):
            List.append("公")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E0 E3"):
            List.append("好")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 4E"):
            List.append("航")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 55"):
            List.append("鉱")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 5B"):
            List.append("香")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 5D"):
            List.append("高")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 60"):
            List.append("号")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 6C"):
            List.append("黒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 8F"):
            List.append("砂")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 98"):
            List.append("最")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 A9"):
            List.append("裁")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 AC"):
            List.append("剤")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 AD"):
            List.append("在")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 EF"):
            List.append("刺")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 F0"):
            List.append("司")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E1 FC"):
            List.append("指")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 45"):
            List.append("止")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 4B"):
            List.append("紫")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 62"):
            List.append("持")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 64"):
            List.append("次")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 6A"):
            List.append("示")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 81"):
            List.append("漆")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 83"):
            List.append("実")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 8C"):
            List.append("舎")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 A3"):
            List.append("主")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 A9"):
            List.append("種")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 B0"):
            List.append("寿")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 C0"):
            List.append("終")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 C3"):
            List.append("臭")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 C4"):
            List.append("舟")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 D1"):
            List.append("柔")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E2 DC"):
            List.append("縮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 40"):
            List.append("書")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 4E"):
            List.append("勝")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 75"):
            List.append("称")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 81"):
            List.append("証")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 9D"):
            List.append("飾")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 A4"):
            List.append("色")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 AE"):
            List.append("寝")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 B2"):
            List.append("新")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 BE"):
            List.append("親")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 C0"):
            List.append("身")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 CF"):
            List.append("図")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 D6"):
            List.append("水")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E3 F9"):
            List.append("性")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 42"):
            List.append("正")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 45"):
            List.append("盛")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 4D"):
            List.append("醒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 4E"):
            List.append("青")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 60"):
            List.append("赤")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 64"):
            List.append("切")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 6C"):
            List.append("雪")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 90"):
            List.append("鮮")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 CF"):
            List.append("草")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E4 E9"):
            List.append("属")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 40"):
            List.append("打")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 47"):
            List.append("体")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 4F"):
            List.append("替")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 89"):
            List.append("探")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 8E"):
            List.append("炭")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 8F"):
            List.append("短")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 A6"):
            List.append("置")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 B3"):
            List.append("茶")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 E0"):
            List.append("調")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 E4"):
            List.append("長")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 E9"):
            List.append("直")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 F5"):
            List.append("通")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E5 FB"):
            List.append("漬")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 4F"):
            List.append("停")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 7B"):
            List.append("鉄")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 80"):
            List.append("店")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 88"):
            List.append("田")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 A4"):
            List.append("島")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 C5"):
            List.append("闘")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 D0"):
            List.append("銅")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 DA"):
            List.append("読")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E6 F7"):
            List.append("鍋")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 48"):
            List.append("肉")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 5A"):
            List.append("年")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 73"):
            List.append("琶")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 A0"):
            List.append("漠")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 B4"):
            List.append("髪")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 BF"):
            List.append("半")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 C7"):
            List.append("版")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 F0"):
            List.append("避")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E7 F8"):
            List.append("琵")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 49"):
            List.append("必")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 59"):
            List.append("表")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 67"):
            List.append("品")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 7D"):
            List.append("斧")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 9D"):
            List.append("物")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 A0"):
            List.append("噴")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 B3"):
            List.append("並")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 C1"):
            List.append("片")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 C9"):
            List.append("弁")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E8 E1"):
            List.append("宝")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 48"):
            List.append("棒")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 51"):
            List.append("防")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 54"):
            List.append("僕")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 68"):
            List.append("磨")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 88"):
            List.append("味")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 A0"):
            List.append("命")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 A1"):
            List.append("明")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 AC"):
            List.append("面")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "E9 BF"):
            List.append("戻")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA 4A"):
            List.append("様")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA 7A"):
            List.append("率")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA 8E"):
            List.append("料")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA 9B"):
            List.append("緑")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA C3"):
            List.append("練")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA CB"):
            List.append("路")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA D6"):
            List.append("牢")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA D7"):
            List.append("篭")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA E3"):
            List.append("和")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EA E4"):
            List.append("話")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EB 80"):
            List.append("丼")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EB 81"):
            List.append("隕")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "EB 84"):
            List.append("橙")
        elif(Hex[i] + Hex[i+1] + " " + Hex[i+3] + Hex[i+4] == "00 00"):
            List.append(" ")
        else:
            List.append(i)
    return "".join(List)

# Test on Demon Fang
print(HexToJpn("9B 4D 9B 4E 9B 4C 00 00 00 00 00"))

