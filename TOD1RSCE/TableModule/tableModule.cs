using System.Collections.Generic;
using System.IO;

namespace sceWork
{
    public class tableModule
    {
        private List<tableEntry> entry;

        public tableModule(string fileName)
        {
            string[] strArray = File.ReadAllLines(fileName);
            this.entry = new List<tableEntry>();
            for (int index = 0; index < strArray.Length; ++index)
                this.entry.Add(new tableEntry(strArray[index]));
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
            string str1 = str;
            for (int index = 0; index < this.entry.Count; ++index)
                str1 = this.Replace(str1, this.entry[index].A, this.entry[index].B);
            return str1.Replace("[", "").Replace("]", "");
        }

        public string ConvertBtoA(string str)
        {
            string str1 = str;
            for (int index = 0; index < this.entry.Count; ++index)
                str1 = this.Replace(str1, this.entry[index].B, this.entry[index].A);
            return str1.Replace("[", "").Replace("]", "");
        }
    }
}