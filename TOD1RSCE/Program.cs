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
        public static String altPath;
        private static bool useSJIS = false;
        private static bool useAltPath = false;
        private static bool doDeduplication = false;
        private static bool dumpRaw = false;
        private static bool dumpCount = false;
        private static bool flag1 = false;
        private static bool flag2 = false;
        public static bool verbose = false;

        private static void Main(string[] args)
        {
            Console.WriteLine("TOD1RSCE Module v0.9 - Decompiled Clone");
            string exeDir = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase);
            exeDir = new Uri(exeDir).LocalPath;

            if (File.Exists(Path.Combine(exeDir, "jpcodes.txt")))
                jpcodes = new tableModule(Path.Combine(exeDir, "jpcodes.txt"));
            if (File.Exists(Path.Combine(exeDir, "codes.txt")))
                codes = new tableModule(Path.Combine(exeDir, "codes.txt"), true);

            if (args.Length == 0)
            {
                Console.WriteLine("Generously donated by Temple of Tales Translations team");
                Console.WriteLine("http://temple-tales.ru/translations.html\n");
                Console.WriteLine("Usage:");
                Console.WriteLine("    extract: .exe -e *.tod1rsce");
                Console.WriteLine("    extract: .exe -e *.tod1rsce4");
                Console.WriteLine("    extract: .exe -e *.rsce");
                Console.WriteLine("    extract: .exe -e <dir>");
                Console.WriteLine("    repack : .exe -r *.tod1rsce");
                Console.WriteLine("    repack : .exe -r *.tod1rsce4");
                Console.WriteLine("    repack : .exe -r *.rsce");
                Console.WriteLine("    repack : .exe -r <dir>");
                Console.WriteLine("Add params:");
                Console.WriteLine("    -i : Specify a diferent input file");
                Console.WriteLine("    -v : Verbose failed string output");
                Console.WriteLine("    -as <count> : Add <count> bytes to start file");
                Console.WriteLine("    -ae : Seek file to 16 bytes");
                Console.WriteLine("    -sjis : Use CP-932 (SHIFT-JIS) encoding");
                Console.WriteLine("    -dedup : deduplicate strings on insertion");
                Console.WriteLine("    -count : Dump byte count (debug)");
                Console.WriteLine("    -raw : Dump/insert raw bytes ignoring JPCODES and CODES");
                //Console.ReadKey();
                Environment.Exit(0);
            }

            ParseArgs(args);
            string str = args[0];

            //Do extraction
            if (str == "-e")
            {
                if (Path.GetExtension(args[1]) == ".rsce" || Path.GetExtension(args[1]) == ".tod1rsce" || Path.GetExtension(args[1]) == ".tod1rsce4")
                {
                    if (jpcodes == null)
                    {
                        MiscUtils.Warn("No JPCODES.txt file! Dumping raw bytes...");
                    }

                    Extract(args[1]);
                }
                else if (Directory.Exists(args[1]))
                {
                    foreach (string fileName in ((IEnumerable<string>)Directory.GetFiles(args[1], "*.*", SearchOption.AllDirectories)).Where<string>((Func<string, bool>)(s => s.EndsWith(".rsce") || s.EndsWith(".tod1rsce") || s.EndsWith(".tod1rsce4"))).ToArray<string>())
                        Extract(fileName);
                }
            }

            //Do insertion
            if (str == "-r")
            {
                if (Path.GetExtension(args[1]) == ".rsce" || Path.GetExtension(args[1]) == ".tod1rsce" || Path.GetExtension(args[1]) == ".tod1rsce4")
                {
                    if (jpcodes == null)
                    {
                        MiscUtils.Warn("No JPCODES.txt file! Assuming dump is raw...");
                    }

                    Repack(args[1]);
                    AddBytes(args[1], args);
                }
                else if (Directory.Exists(args[1]))
                {
                    string[] array = ((IEnumerable<string>)Directory.GetFiles(args[1], "*.*", SearchOption.AllDirectories)).Where<string>((Func<string, bool>)(s => s.EndsWith(".rsce") || s.EndsWith(".tod1rsce") || s.EndsWith(".tod1rsce4"))).ToArray<string>();
                    for (int index = 0; index < array.Length; ++index)
                    {
                        Repack(array[index]);
                        AddBytes(array[index], args);
                    }
                }
            }
            Console.WriteLine("Complete!");
            //Console.ReadKey();
        }

        private static void ParseArgs(string[] args)
        {
            for (int index = 0; index < args.Length; ++index)
            {
                try
                {
                    if (args[index] == "-i")
                    {
                        useAltPath = true;
                        if (!File.Exists(Path.GetFullPath(args[index + 1])))
                        {
                            MiscUtils.Die("Error. The file of the -i parameter does not exist.");
                        }
                        altPath = Path.GetFullPath(args[index + 1]);
                        MiscUtils.Info("Using input file: \"" + altPath + "\"");
                        index++;
                    }
                    if (args[index] == "-v")
                    {
                        verbose = true;
                        MiscUtils.Info("verbose mode active");
                    }
                    if (args[index] == "-sjis")
                    {
                        useSJIS = true;
                        MiscUtils.Info("using CP-932 (SHIFT-JIS) for this operation.");
                    }
                    if (args[index] == "-count")
                    {
                        dumpCount = true;
                        MiscUtils.Info("dumping debug byte counts to file.");
                    }
                    if (args[index] == "-dedup")
                    {
                        doDeduplication = true;
                        MiscUtils.Info("string deduplication is active for this operation.");
                    }
                    if (args[index] == "-raw")
                    {
                        dumpRaw = true;
                        MiscUtils.Info("Ignoring JPCODES and CODES for this operation.");
                    }
                    if (args[index] == "-as")
                    {
                        flag1 = true;
                        MiscUtils.Info("Activate add bytes to start.");
                        if (!int.TryParse(args[index + 1], out _))
                        {
                            MiscUtils.Die("Error. The value of the -as parameter is not a number.");
                        }
                        index++;
                    }
                    if (args[index] == "-ae")
                    {
                        flag2 = true;
                        MiscUtils.Info("Activate add %16 to end.");
                    }
                }
                catch (Exception)
                {
                    MiscUtils.Die("Parameter reference error, perhaps a parameter was entered, but its value was not entered.");
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

            if (jpcodes == null || dumpRaw)
            {
                ExtractRaw(fileName, sceModule);
                return;
            }

            if (dumpCount)
            {
                ExtractCount(fileName, sceModule);
                return;
            }

            if (codes == null)
                MiscUtils.Warn("No CODES.txt file! Special sequences will be ignored, output can get messy!");

            List<string> stringList = new List<string>();
            for (int idx = 0; idx < sceModule.Count; ++idx)
            {
                string str = sceModule.GetStringBlock(idx);
                if (codes != null)
                    str = codes.ConvertNativeToTags(str);

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

        private static void ExtractRaw(string fileName, sceModule sceModule)
        {
            string path;

            if (Path.GetDirectoryName(fileName) == "")
            {
                path = Environment.CurrentDirectory + "\\" + Path.GetFileNameWithoutExtension(fileName) + "_raw.txt";
            }
            else
            {
                path = Path.GetDirectoryName(fileName) + "\\" + Path.GetFileNameWithoutExtension(fileName) + "_raw.txt";
            }

            List<byte> dump = new List<byte>();
            for (int idx = 0; idx < sceModule.Count; ++idx)
            {
                dump.AddRange(sceModule.GetBlock(idx));
                dump.AddRange(Encoding.ASCII.GetBytes("\r\n[ENDBLOCK]\r\n"));
            }
            File.WriteAllBytes(path, dump.ToArray());
            return;

        }
        private static void ExtractCount(string fileName, sceModule sceModule)
        {
            string path;

            if (Path.GetDirectoryName(fileName) == "")
            {
                path = Environment.CurrentDirectory + "\\" + Path.GetFileNameWithoutExtension(fileName) + "_count.txt";
            }
            else
            {
                path = Path.GetDirectoryName(fileName) + "\\" + Path.GetFileNameWithoutExtension(fileName) + "_count.txt";
            }

            List<string> byteInfo = new List<string>();
            int total = 0;
            bool switch1 = true;
            for (int idx = 0; idx < sceModule.Count; ++idx)
            {
                total += sceModule.GetBlock(idx).Length;
                if (total > 0xFFF && switch1)
                {
                    byteInfo.Add("-----------CUT POINT-----------------------");
                    byteInfo.Add("|       length average: " + (total / idx + 1));
                    byteInfo.Add("-----------CUT POINT-----------------------");
                    switch1 = false;
                }
                byteInfo.Add(string.Format("Block: {0:D3},", idx)
                    + string.Format(" Ptr: 0x{0:X6}", sceModule.Header.fileStrings[idx].myOffset)
                    + string.Format(" ({0:D}),", (int)sceModule.Header.fileStrings[idx].typeOffset)
                    + string.Format(" Text: 0x{0:X6}", sceModule.Header.fileStrings[idx].offset)
                    + string.Format(" | Line length: {0:D3}, ", sceModule.GetBlock(idx).Length)
                    + string.Format("total length: {0:D4}", total));

            }
            File.WriteAllLines(path, byteInfo.ToArray());
            return;
        }

        private static void Repack(string fileName)
        {
            sceModule sceModule = new sceModule(fileName);

            //check if rsce has text beforehand
            if (!sceModule.isHaveText())
                return;

            string path;
            if (useAltPath)
                path = altPath;
            else
            {
                if (Path.GetDirectoryName(fileName) == "")
                    path = Environment.CurrentDirectory + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt";
                else
                    path = Path.GetDirectoryName(fileName) + "\\" + Path.GetFileNameWithoutExtension(fileName) + ".txt";
            }

            if (!File.Exists(path))
                MiscUtils.Die("The file \"" + Path.GetFileName(path) + "\" does not exist!");

            //Echo!
            Console.WriteLine(string.Format("Repacking {0}...", Path.GetFileName(fileName)));

            if (jpcodes == null || dumpRaw)
            {
                RepackRaw(path, sceModule);
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
            if (strArray[strArray.Length - 1].Equals(string.Empty))
            {
                Array.Resize(ref strArray, strArray.Length - 1);
            }

            List<string> stringList = new List<string>();
            List<string> plainStringList = new List<string>();
            List<int> lineNumberList = new List<int>();
            int lineNumber = 0;
            int blockLine = 0;
            string str = "";
            for (int index = 0; index < strArray.Length; ++index)
            {
                if (strArray[index].StartsWith("//"))
                    continue;

                if (strArray[index].StartsWith("[ENDBLOCK]"))
                {
                    lineNumberList.Add(lineNumber - blockLine);
                    blockLine = 0;
                    stringList.Add(str);
                    plainStringList.Add(str.Replace("\r\n", "\\r\\n"));
                    str = "";
                }
                else
                {
                    if (strArray[index + 1].StartsWith("[ENDBLOCK]"))
                    {
                        str = str + strArray[index];
                    }
                    else
                    {
                        str = str + strArray[index] + "\r\n";
                        blockLine++;
                    }
                }
                lineNumber++;
            }

            //check if same ammount of lines are present
            if (sceModule.Header.fileStrings.Count != stringList.Count)
            {
                MiscUtils.Warn("Different amount of strings in the file!");
                MiscUtils.Warn("expected "
                    + sceModule.Header.fileStrings.Count + " but got "
                    + stringList.Count);
                MiscUtils.Warn("Packing anyway, but expect errors!");
                Console.WriteLine();
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
                MiscUtils.Warn("No CODES.txt file! If the file has replaced tags they will be inserted verbatim!");
            }

            int realLine = 0;
            int skippedLine = 0;
            for (int index = 0; index < stringList.Count; ++index)
            {
                realLine++;
                while (stringList[index].StartsWith(AnsiToHex("<IGNORE>")))
                {
                    if (verbose)
                        MiscUtils.Info("Ignoring block " + realLine + " (around line " + lineNumberList[index] + ")...");

                    lineNumberList.RemoveAt(index);
                    plainStringList.RemoveAt(index);
                    sceModule.Header.fileStrings.RemoveAt(index);
                    stringList.RemoveAt(index);
                    realLine++;
                    skippedLine++;
                }
                sceModule.SetBlock(index, HexToArrayByte(stringList[index]), plainStringList, lineNumberList);
            }

            MiscUtils.Info("Ignored " + skippedLine + " blocks");
            Console.WriteLine();
            sceModule.Save(doDeduplication);
            sceModule.Dispose();
        }
        private static void RepackRaw(string path, sceModule sceModule)
        {
            byte[] dump = File.ReadAllBytes(path);
            string hexStringDump = BitConverter.ToString(dump).Replace("-", string.Empty);

            string[] hexDump = hexStringDump.Split(new[] { AnsiToHex("\r\n[ENDBLOCK]\r\n") }, StringSplitOptions.None);

            if (hexDump[hexDump.Length - 1].Equals(string.Empty))
            {
                Array.Resize(ref hexDump, hexDump.Length - 1);
            }

            for (int index = 0; index < hexDump.Length; ++index)
                sceModule.SetBlock(index, HexToArrayByte(hexDump[index]));
            sceModule.Save();
            sceModule.Dispose();
            return;
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
