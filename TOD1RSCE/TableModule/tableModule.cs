using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;

namespace sceWork
{
    public class tableModule
    {
        private List<tableEntry> entry;

        public tableModule(string fileName, bool order = false)
        {
            string[] strArray = File.ReadAllLines(fileName);
            entry = new List<tableEntry>();
            for (int index = 0; index < strArray.Length; ++index)
            {
                if (!strArray[index].StartsWith("//") && !strArray[index].StartsWith("#"))
                {
                    entry.Add(new tableEntry(strArray[index]));
                }
            }
            if (order)
            {
                Comparison<tableEntry> p = delegate (tableEntry temp1, tableEntry temp2)
                                   {
                                       if (temp1.A.Length < temp2.A.Length) return 1;
                                       else if (temp1.A.Length > temp2.A.Length) return -1;
                                       return temp1.A.CompareTo(temp2.A) * -1;
                                   };
                entry.Sort(p);
            }
        }

        private string FindAtoB(string a)
        {
            for (int index = 0; index < this.entry.Count; ++index)
            {
                if (this.entry[index].A == a)
                    return this.entry[index].B;
            }
            return a;
        }

        private string FindBtoA(string b)
        {
            for (int index = 0; index < this.entry.Count; ++index)
            {
                if (this.entry[index].B == b)
                    return this.entry[index].A;
            }
            return b;
        }

        private string Replace(string str, string oldValue, string newValue)
        {
            string str1 = str;
            int startIndex1 = 0;
            while (true)
            {
                bool flag = true;
                do
                {
                    int startIndex2 = 0;
                    SortedList<int, int> sortedList = new SortedList<int, int>();
                    sortedList.Clear();
                    while (true)
                    {
                        int num1 = str1.IndexOf('[', startIndex2);
                        if (num1 > -1)
                        {
                            int num2 = num1;
                            int num3 = str1.IndexOf(']', num2) + 1;
                            sortedList.Add(num2, num3 - 1);
                            startIndex2 = num3;
                        }
                        else
                            break;
                    }
                    startIndex1 = str1.IndexOf(oldValue, startIndex1);
                    if (startIndex1 >= 0 && startIndex1 <= str1.Length)
                    {
                        if (startIndex1 % 2 != 0)
                        {
                            ++startIndex1;
                        }
                        else
                        {
                            flag = false;
                            for (int index = 0; index < sortedList.Count; ++index)
                            {
                                if (startIndex1 >= sortedList.Keys[index] && startIndex1 <= sortedList.Values[index])
                                {
                                    ++startIndex1;
                                    flag = true;
                                    break;
                                }
                            }
                        }
                    }
                    else
                        goto label_14;
                }
                while (flag);
                string str2 = string.Format("[{0}]", (object)newValue);
                str1 = str1.Remove(startIndex1, oldValue.Length).Insert(startIndex1, str2);
                startIndex1 += str2.Length;
            }
        label_14:
            return str1;
        }

        public string ConvertAtoB(string str)
        {
            string str1 = "";
            byte[] byteArr;
            if (str == "")
                return str;

            if (str.EndsWith("00"))
                byteArr = GetHexStringAsByteArray(str, 2);
            else
                byteArr = GetHexStringAsByteArray(str);

            for (int index = 0; index < byteArr.Length; ++index)
            {
                //Canonical byte ranges for character are 0x9940 - 0x9FFF and then 0xE000 - 0xEC5F
                //The ranges 0xA000-0xDFFF are technically correct too, so there are duplicates
                if ((byteArr[index] >= 0x99 && (byteArr[index] < 0xA0) || byteArr[index] >= 0xE0) && index + 2 <= byteArr.Length)
                {
                    string str2 = BitConverter.ToString(byteArr, index, 2).Replace("-", string.Empty);

                    int index2 = 0;
                    while (index2 < entry.Count)
                    {
                        if (entry[index2].A.Equals(str2))
                        {
                            str1 += entry[index2].B;
                            break;
                        }
                        index2++;
                    }

                    index++;
                    continue;
                }
                if (byteArr[index] == 0x81 && byteArr[index + 1] == 0x40)
                {
                    str1 += "09";
                    index++;
                    continue;
                }
                if (byteArr[index] < 0x17 && byteArr[index] > 0x01 && index + 4 < byteArr.Length)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        str1 += "3C78" +
                        BitConverter.ToString(Encoding.GetEncoding(1251).GetBytes(BitConverter.ToString(byteArr, index, 1).Replace("-", string.Empty))).Replace("-", string.Empty)
                        + "3E";
                        index++;
                    }
                    index--;
                    continue;
                }
                if (byteArr[index] >= 0x17 && byteArr[index] < 0x20 && byteArr[index] > 0x01)
                {
                    for (int j = 0; ; j++)
                    {
                        str1 += "3C78" +
                        BitConverter.ToString(Encoding.GetEncoding(1251).GetBytes(BitConverter.ToString(byteArr, index, 1).Replace("-", string.Empty))).Replace("-", string.Empty)
                        + "3E";
                        index++;
                        if (byteArr[index] == 0x80 || index == byteArr.Length - 1)
                        {
                            break;
                        }
                    }
                    index--;
                    continue;
                }
                if (byteArr[index] < 0x7F && byteArr[index] > 0x01)
                {
                    str1 += BitConverter.ToString(byteArr, index, 1).Replace("-", string.Empty);
                    continue;
                }
                if (byteArr[index] == 0x01)
                {
                    str1 += "0D0A";
                    continue;
                }

                str1 += "3C78" +
                BitConverter.ToString(Encoding.GetEncoding(1251).GetBytes(BitConverter.ToString(byteArr, index, 1).Replace("-", string.Empty))).Replace("-", string.Empty)
                + "3E";
                continue;

            }

            return str1;
        }


        public string ConvertTagsToNative(string str)
        {
            string str1 = str;
            for (int index = 0; index < entry.Count; ++index)
                str1 = Replace(str1, entry[index].B, entry[index].A);
            return str1.Replace("[", "").Replace("]", "");
        }

        //This function replaces special byte sequences with a friendly name
        //defined in CODES.txt, as the special sequences are always 3+
        //bytes long and start with a byte < 0x20 it can be done once for all of the file
        public string ConvertNativeToTags(string str)
        {
            string str1 = str;

            if (str1.EndsWith("00"))
                str1 = str1.Remove(str1.Length - 2, 2);

            for (int index = 0; index < entry.Count; ++index)
                str1 = Replace(str1, entry[index].A, entry[index].B);
            return str1.Replace("[", "").Replace("]", "");
        }

        private byte[] GetHexStringAsByteArray(string str, int toRemove = 0)
        {
            byte[] byteArr = new byte[(str.Length - toRemove) / 2];

            for (int index = 0; index < str.Length - toRemove; index += 2)
            {
                byteArr[index / 2] += byte.Parse(str.Substring(index, 2), NumberStyles.HexNumber);
            }
            return byteArr;
        }

        public string ConvertBtoA(string str)
        {
            string str1 = "";
            byte[] byteArr = GetHexStringAsByteArray(str);

            for (int index = 0; index < byteArr.Length; ++index)
            {
                if ((byteArr[index] & 0x80) != 0 && index + 2 <= byteArr.Length)
                {
                    string str2 = BitConverter.ToString(byteArr, index, 2).Replace("-", string.Empty);
                    int index2 = 0;
                    while (index2 < entry.Count)
                    {
                        if (entry[index2].B.Equals(str2))
                        {
                            str1 += entry[index2].A;
                            break;
                        }
                        index2++;
                    }

                    index++;
                }
                else if (index + 4 < byteArr.Length && byteArr[index] == 0x3C
                    && byteArr[index + 1] == 0x78 && byteArr[index + 4] == 0x3E)
                {
                    str1 += Encoding.GetEncoding(1251).GetString(byteArr, index + 2, 2);
                    index += 4;
                }
                else if (byteArr[index] == 0x0D && byteArr[index + 1] == 0x0A)
                {
                    str1 += "01";
                    index++;
                }
                else if (byteArr[index] == 0x09)
                {
                    str1 += "8140";
                }
                else /*if (byteArr[index] < 0x7F) */
                {
                    str1 += BitConverter.ToString(byteArr, index, 1).Replace("-", string.Empty);
                }

            }

            return str1 + "00";
        }
    }
}