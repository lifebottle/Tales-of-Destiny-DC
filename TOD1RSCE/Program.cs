using StreamFAdd;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;

namespace sceWork
{
    internal class Program
    {
        public static tableModule jpcodes;
        public static tableModule codes;
        public static Encoding SJIS = Encoding.GetEncoding(932);
        private static bool useSJIS = false;
        private static bool dumpRaw = false;
        private static bool flag1 = false;
        private static bool flag2 = false;

        private static void Main(string[] args)
        {
            if (File.Exists("jpcodes.txt"))
                Program.jpcodes = new tableModule("jpcodes.txt");
            if (File.Exists("codes.txt"))
                Program.codes = new tableModule("codes.txt");
            if (args.Length != 0)
            {
                ParseArgs(args);
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
                //Console.ReadKey();
            }
            else
            {
                Console.WriteLine("TOD1RSCE Module Clone v0.3");
                Console.WriteLine("Decompiled by Peter Nguyen");
                Console.WriteLine("I have no idea what I am doing.\n");
                Console.WriteLine("Usage:");
                Console.WriteLine("    extract : .exe -e *.tod1rsce");
                Console.WriteLine("    extract : .exe -e *.tod1rsce4");
                Console.WriteLine("    extract : .exe -e *.rsce");
                Console.WriteLine("    extract : .exe -e <dir>");
                Console.WriteLine("    repack  : .exe -r *.tod1rsce");
                Console.WriteLine("    repack  : .exe -r *.tod1rsce4");
                Console.WriteLine("    repack  : .exe -r *.rsce");
                Console.WriteLine("    repack  : .exe -r <dir>");
                Console.WriteLine("Add params:");
                Console.WriteLine("    -as <count> : Add <count> bytes to start file");
                Console.WriteLine("    -ae : Seek file to 16 bytes");
                Console.WriteLine("    -sjis : use CP-932 (SHIFT-JIS) encoding");
                Console.WriteLine("    -raw : dump/insert raw bytes ignoring JPCODES and CODES");
                Console.ReadKey();
            }
        }

        private static void Die(string message)
        {
            Console.WriteLine(message);
            //Console.ReadKey();
            Environment.Exit(-1);
        }

        private static void ParseArgs(string[] args)
        {
            for (int index = 0; index < args.Length; ++index)
            {
                try
                {
                    if (args[index] == "-sjis")
                    {
                        useSJIS = true;
                        Console.WriteLine("using CP-932 (SHIFT-JIS) for this operation.");
                    }
                    if (args[index] == "-raw")
                    {
                        dumpRaw = true;
                        Console.WriteLine(" -Ignoring JPCODES and CODES for this operation.");
                    }
                    if (args[index] == "-as")
                    {
                        flag1 = true;
                        Console.WriteLine(" -Activate add bytes to start.");
                        if (!int.TryParse(args[index + 1], out _))
                        {
                            Die("Error. The value of the -as parameter is not a number.");
                        }
                    }
                    if (args[index] == "-ae")
                    {
                        flag2 = true;
                        Console.WriteLine(" -Activate add %16 to end.");
                    }
                }
                catch (Exception)
                {
                    Die("Parameter reference error, perhaps a parameter was entered, but its value was not entered.");
                }
            }
        }

        private static void AddBytes(string fileName, string[] args)
        {
            int result = 0;
            Console.ForegroundColor = ConsoleColor.Red;
            for (int index = 0; index < args.Length; ++index)
            {

                if (args[index] == "-as")
                {
                    Console.WriteLine(" -Activate add bytes to start.");
                    int.TryParse(args[index + 1], out result);
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
            Console.WriteLine(string.Format("Extracting {0}...", Path.GetFileName(fileName)));

            if (jpcodes == null)
            {
                Console.WriteLine("No JPCODES.txt file! Dumping raw bytes...");
            }
            if (jpcodes == null || dumpRaw)
            {
                List<byte> dump = new List<byte>();
                for (int idx = 0; idx < sceModule.Count - 1; ++idx)
                {
                    dump.AddRange(sceModule.GetBlock(idx));
                    dump.Add(0x0D); dump.Add(0x0A);
                    dump.AddRange(Encoding.ASCII.GetBytes("[ENDBLOCK]"));
                    dump.Add(0x0D); dump.Add(0x0A);
                }
                File.WriteAllBytes(path, dump.ToArray());
                return;
            }

            List<string> stringList = new List<string>();
            for (int idx = 0; idx < sceModule.Count - 1; ++idx)
            {
                string str = sceModule.GetStringBlock(idx);
                if (codes != null)
                    str = codes.ConvertNativeToTags(str);
                else
                    Console.WriteLine("No CODES.txt file! Special sequences will be ignored, output can get messy!");
                if (jpcodes != null)
                    str = jpcodes.ConvertAtoB(str);
                stringList.Add(HexToAnsi(str));
                stringList.Add("[ENDBLOCK]");
            }
            if (useSJIS)
                File.WriteAllLines(path, stringList.ToArray(), SJIS);
            else
                File.WriteAllLines(path, stringList.ToArray());
        }

        private static void Repack(string fileName)
        {
            sceModule sceModule = new sceModule(fileName);

            //check if rsce has text beforehand
            if (!sceModule.isHaveText())
                return;

            string path = !(Path.GetDirectoryName(fileName) != "") ? Environment.CurrentDirectory + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt" : Path.GetDirectoryName(fileName) + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt";
            if (!File.Exists(path))
                return;

            //Echo!
            Console.WriteLine(string.Format("Repacking {0}...", Path.GetFileName(fileName)));

            if (jpcodes == null)
            {
                Console.WriteLine("No JPCODES.txt file! Assuming dump is raw...");
            }
            if (jpcodes == null || dumpRaw)
            {
                byte[] dump = File.ReadAllBytes(path);
                string hexStringDump = System.BitConverter.ToString(dump).Replace("-", string.Empty);

                string[] hexDump = hexStringDump.Split(new[] { "0D0A5B454E44424C4F434B5D0D0A" /*"\r\n[ENDBLOCK]\r\n"*/ }, StringSplitOptions.None);

                if (hexDump[hexDump.Length - 1].Equals(String.Empty))
                {
                    Array.Resize(ref hexDump, hexDump.Length - 1);
                }

                for (int index = 0; index < hexDump.Length; ++index)
                    sceModule.SetBlock(index, HexToArrayByte(hexDump[index]));
                sceModule.Save();
                sceModule.Dispose();
                return;
            }

            //Convert UTF-8 to SJIS, as it's easier to detect kanjis in SJIS
            byte[] temp;
            if (!useSJIS)
                temp = Encoding.Convert(Encoding.UTF8, SJIS, File.ReadAllBytes(path));
            else
                temp = File.ReadAllBytes(path);
            string[] stringSeparators = new string[] { "\r\n" };
            string[] strArray = SJIS.GetString(temp).Split(stringSeparators, StringSplitOptions.None);

            //Can't ignore empty lines with the split (some lines might be blank in the source file)
            //but the last line can't be blank, so handle that here
            if (strArray[strArray.Length - 1].Equals(String.Empty))
            {
                Array.Resize(ref strArray, strArray.Length - 1);
            }
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
                stringList[index] = AnsiToHex(stringList[index]);
            if (jpcodes != null)
            {
                for (int index = 0; index < stringList.Count; ++index)
                    stringList[index] = jpcodes.ConvertBtoA(stringList[index]);
            }
            if (codes != null)
            {
                for (int index = 0; index < stringList.Count; ++index)
                    stringList[index] = codes.ConvertTagsToNative(stringList[index]);
            }
            else
            {
                Console.WriteLine("No CODES.txt file! If the file has replaced tags they will be inserted verbatim!");
            }

            for (int index = 0; index < stringList.Count; ++index)
                sceModule.SetBlock(index, HexToArrayByte(stringList[index]));
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

        private static string HexToAnsi(string str)
        {
            byte[] temp = Encoding.Convert(Encoding.GetEncoding(932), Encoding.UTF8, Program.HexToArrayByte(str));
            return Encoding.UTF8.GetString(temp);
        }

        private static string AnsiToHex(string str)
        {
            string str1 = "";
            byte[] byteArr = Encoding.GetEncoding(932).GetBytes(str);

            for (int index = 0; index < byteArr.Length; ++index)
                str1 += System.BitConverter.ToString(byteArr, index, 1).Replace("-", string.Empty);
            return str1;
        }

        private static byte GetAnsiByte(char chr) => Encoding.GetEncoding(932).GetBytes(chr.ToString())[0];

        private static string GetAnsi(byte[] data) => Encoding.GetEncoding(932).GetString(data, 0, data.Length);
    }
}