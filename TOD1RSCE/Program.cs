using StreamFAdd;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace sceWork
{
    internal class Program
    {
        public static tableModule jpcodes;
        public static tableModule codes;

        private static void Main(string[] args)
        {
            if (File.Exists("jpcodes.txt"))
                Program.jpcodes = new tableModule("jpcodes.txt");
            if (File.Exists("codes.txt"))
                Program.codes = new tableModule("codes.txt");
            if (args.Length != 0)
            {
                string str = args[0];
                if (!(str == "-e"))
                {
                    if (str == "-r")
                    {
                        if (Path.GetExtension(args[1]) == ".rsce" || Path.GetExtension(args[1]) == ".tod1rsce" || Path.GetExtension(args[1]) == ".tod1rsce4")
                        {
                            Program.Repack(args[1]);
                            Program.AddBytes(args[1], args);
                        }
                        else if (Directory.Exists(args[1]))
                        {
                            string[] array = ((IEnumerable<string>)Directory.GetFiles(args[1], "*.*", SearchOption.AllDirectories)).Where<string>((Func<string, bool>)(s => s.EndsWith(".rsce") || s.EndsWith(".tod1rsce") || s.EndsWith(".tod1rsce4"))).ToArray<string>();
                            for (int index = 0; index < array.Length; ++index)
                            {
                                Program.Repack(array[index]);
                                Program.AddBytes(array[index], args);
                            }
                        }
                    }
                }
                else if (Path.GetExtension(args[1]) == ".rsce" || Path.GetExtension(args[1]) == ".tod1rsce" || Path.GetExtension(args[1]) == ".tod1rsce4")
                    Program.Extract(args[1]);
                else if (Directory.Exists(args[1]))
                {
                    foreach (string fileName in ((IEnumerable<string>)Directory.GetFiles(args[1], "*.*", SearchOption.AllDirectories)).Where<string>((Func<string, bool>)(s => s.EndsWith(".rsce") || s.EndsWith(".tod1rsce") || s.EndsWith(".tod1rsce4"))).ToArray<string>())
                        Program.Extract(fileName);
                }
                Console.WriteLine("Complete!");
            }
            else
            {
                Console.WriteLine("TOD1RSCE Module Clone v0.3\nDecompiled by Peter Nguyen\nI have no idea what I am doing.\n\n");
                Console.WriteLine("Usage:\n      extract : .exe -e *.tod1rsce\n      extract : .exe -e *.tod1rsce4\n      extract : .exe -e *.rsce\n      extract : .exe -e <dir>\n      repack  : .exe -r *.tod1rsce\n      repack  : .exe -r *.tod1rsce4\n      repack  : .exe -r *.rsce\n      repack  : .exe -r <dir>\n");
                Console.WriteLine("Add params:\n           -as <count> : Add <count> bytes to start file\n           -ae : Seek file to 16 bytes");
                Console.ReadKey();
            }
        }

        private static void AddBytes(string fileName, string[] args)
        {
            bool flag1 = false;
            bool flag2 = false;
            int result = 0;
            Console.ForegroundColor = ConsoleColor.Red;
            for (int index = 0; index < args.Length; ++index)
            {
                try
                {
                    if (args[index] == "-as")
                    {
                        flag1 = true;
                        Console.WriteLine(" -Activate add bytes to start.");
                        if (!int.TryParse(args[index + 1], out result))
                            Console.WriteLine("Error. The value of the -as parameter is not a number.");
                    }
                    if (args[index] == "-ae")
                    {
                        flag2 = true;
                        Console.WriteLine(" -Activate add %16 to end.");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Parameter reference error, perhaps a parameter was entered, but its value was not entered.");
                }
            }
            Console.ForegroundColor = ConsoleColor.White;
            StreamFunctionAdd streamFunctionAdd1 = new StreamFunctionAdd();
            StreamFunctionAdd streamFunctionAdd2 = new StreamFunctionAdd(fileName);
            if (flag2)
            {
                streamFunctionAdd2.PositionStream = streamFunctionAdd2.LengthStream;
                streamFunctionAdd2.SeekValueWrite(16U);
            }
            if (!flag1)
                return;
            StreamFunctionAdd destination = new StreamFunctionAdd();
            for (int index = 0; index < result; ++index)
                destination.WriteByte((byte)0);
            streamFunctionAdd2.PositionStream = 0L;
            streamFunctionAdd2.CopyPartTo(destination, (int)streamFunctionAdd2.LengthStream);
            streamFunctionAdd2.Dispose();
            destination.SaveToFile(fileName);
        }

        private static void Extract(string fileName)
        {
            sceModule sceModule = new sceModule(fileName);
            if (!sceModule.isHaveText())
                return;
            string path = !(Path.GetDirectoryName(fileName) != "") ? Environment.CurrentDirectory + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt" : Path.GetDirectoryName(fileName) + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt";
            Console.WriteLine(string.Format("Extract {0}", (object)Path.GetFileName(fileName)));
            List<string> stringList = new List<string>();
            for (int idx = 0; idx < sceModule.Count; ++idx)
            {
                string str = sceModule.GetStringBlock(idx);
                if (Program.jpcodes != null)
                    str = Program.jpcodes.ConvertAtoB(str);
                stringList.Add(Program.HexToAnsi(str));
                stringList.Add("[ENDBLOCK]");
            }
            File.WriteAllLines(path, stringList.ToArray(), Encoding.GetEncoding(1251));
        }

        private static void Repack(string fileName)
        {
            sceModule sceModule = new sceModule(fileName);
            if (!sceModule.isHaveText())
                return;
            string path = !(Path.GetDirectoryName(fileName) != "") ? Environment.CurrentDirectory + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt" : Path.GetDirectoryName(fileName) + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt";
            if (!File.Exists(path))
                return;
            Console.WriteLine(string.Format("Repack {0}", (object)Path.GetFileName(fileName)));
            string[] strArray = File.ReadAllLines(path, Encoding.GetEncoding(1251));
            /*This fixes the issue with the code assuming that instances of 0D are linebreaks and converting them to Windows 0D 0A linebreaks. 
            Credit to Ethanol for being smart and knowing how to code :) */
            string[] stringSeparators = new string[] { "\r\n" };
            string[] strArray = File.ReadAllText(path, Encoding.GetEncoding(1251)).Split(stringSeparators, StringSplitOptions.None);
            Array.Resize(ref strArray, strArray.Length - 1);
            List<string> stringList = new List<string>();
            string str = "";
            for (int index = 0; index < strArray.Length; ++index)
            {
                if (strArray[index] == "[ENDBLOCK]")
                {
                    stringList.Add(str);
                    str = "";
                }
                else
                    str = !(strArray[index + 1] != "[ENDBLOCK]") ? str + strArray[index] : str + strArray[index] + "\r\n";
            }
            for (int index = 0; index < stringList.Count; ++index)
                stringList[index] = Program.AnsiToHex(stringList[index]);
            if (Program.codes != null)
            {
                for (int index = 0; index < stringList.Count; ++index)
                    stringList[index] = Program.codes.ConvertAtoB(stringList[index]);
            }
            if (Program.jpcodes != null)
            {
                for (int index = 0; index < stringList.Count; ++index)
                    stringList[index] = Program.jpcodes.ConvertBtoA(stringList[index]);
            }
            for (int index = 0; index < stringList.Count; ++index)
                sceModule.SetBlock(index, Program.HexToArrayByte(stringList[index]));
            sceModule.Save();
            sceModule.Dispose();
        }

        private static byte[] HexToArrayByte(string str)
        {
            List<byte> byteList = new List<byte>();
            for (int index = 0; index < str.Length; index += 2)
            {
                byte num = (byte)(((uint)Program.HexToByte(str[index]) << 4) + (uint)Program.HexToByte(str[index + 1]));
                byteList.Add(num);
            }
            return byteList.ToArray();
        }

        private static byte HexToByte(char s)
        {
            switch (s)
            {
                case '0':
                    return 0;
                case '1':
                    return 1;
                case '2':
                    return 2;
                case '3':
                    return 3;
                case '4':
                    return 4;
                case '5':
                    return 5;
                case '6':
                    return 6;
                case '7':
                    return 7;
                case '8':
                    return 8;
                case '9':
                    return 9;
                case 'A':
                    return 10;
                case 'B':
                    return 11;
                case 'C':
                    return 12;
                case 'D':
                    return 13;
                case 'E':
                    return 14;
                case 'F':
                    return 15;
                default:
                    return 0;
            }
        }

        private static string HexToAnsi(string str) => Program.GetAnsi(Program.HexToArrayByte(str));

        private static string AnsiToHex(string str)
        {
            string str1 = "";
            for (int index = 0; index < str.Length; ++index)
                str1 += Program.GetAnsiByte(str[index]).ToString("X2");
            return str1;
        }

        private static byte GetAnsiByte(char chr) => Encoding.GetEncoding(1251).GetBytes(chr.ToString())[0];

        private static string GetAnsi(byte[] data) => Encoding.GetEncoding(1251).GetString(data, 0, data.Length);
    }
}
