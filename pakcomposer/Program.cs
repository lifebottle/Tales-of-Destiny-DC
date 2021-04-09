using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;

namespace pakcomposer
{
    internal class Program
    {
        private static char gMode = 'N';
        private static char gSubMode = 'N';
        private static string gObject = "";
        private static bool gDoExtensions = false;
        private static bool gDoVerbose = false;
        private static bool gDoUnpack = false;
        private static bool gDoToD2 = false;
        private static byte[] dMainFile;
        private static string dDirectoryName;
        private static int dFileCount;
        private static List<int> dFileOffsets = new List<int>();
        private static List<int> dFileSizes = new List<int>();
        private static List<byte[]> dFiles = new List<byte[]>();
        private static List<string> dFileNames = new List<string>();

        private static void ColorWrite(ConsoleColor Color, string str, params object[] args)
        {
            Console.ForegroundColor = Color;
            Console.Write(str, args);
            Console.ForegroundColor = ConsoleColor.Gray;
            Console.WriteLine();
        }

        private static void ColorWritePlus(
          ConsoleColor FrontColor,
          ConsoleColor BackColor,
          string str,
          params object[] args)
        {
            Console.ForegroundColor = FrontColor;
            Console.BackgroundColor = BackColor;
            Console.Write(str, args);
            Console.ForegroundColor = ConsoleColor.Gray;
            Console.BackgroundColor = ConsoleColor.Black;
            Console.WriteLine();
        }

        private static string CutToExtension(string Input) => Input.Contains(".") ? Input.Remove(Input.LastIndexOf(".")) : Input;

//Credit to Ethanol for fix

        private static string GetFileName(string DN, int number)
        {
            DN = Path.GetFileNameWithoutExtension(DN);
            if (number < 10)
                return DN + "_000" + (object)number;
            if (number < 100)
                return DN + "_00" + (object)number;
            return number < 1000 ? DN + "_0" + (object)number : DN + "_" + (object)number;
        }

        private static void GetFlags(string[] args)
        {
            for (int index = 0; index < args.Length; ++index)
            {
                if (args[index] == "-d" && Program.gMode == 'N')
                {
                    Program.gMode = 'D';
                    if (index + 1 < args.Length)
                        Program.gObject = args[index + 1];
                }
                else if (args[index] == "-c" && Program.gMode == 'N')
                {
                    Program.gMode = 'C';
                    if (index + 1 < args.Length)
                        Program.gObject = args[index + 1];
                }
                else if (args[index] == "-t" && Program.gMode == 'N')
                {
                    Program.gMode = 'T';
                    if (index + 1 < args.Length)
                        Program.gObject = args[index + 1];
                }
                else
                {
                    if (args[index] == "-0" && Program.gSubMode == 'N')
                        Program.gSubMode = '0';
                    if (args[index] == "-1" && Program.gSubMode == 'N')
                        Program.gSubMode = '1';
                    if (args[index] == "-3" && Program.gSubMode == 'N')
                        Program.gSubMode = '3';
                    if (args[index] == "-x")
                        Program.gDoExtensions = true;
                    if (args[index] == "-v")
                        Program.gDoVerbose = true;
                    if (args[index] == "-u")
                        Program.gDoUnpack = true;
                    if (args[index] == "-tod2_ps2_skit_padding")
                        Program.gDoToD2 = true;
                }
            }
        }

        private static string GetExtension(byte[] head)
        {
            if (head.Length >= 9 && head[0] == (byte)84 && (head[1] == (byte)79 && head[2] == (byte)68) && (head[3] == (byte)49 && head[4] == (byte)82 && (head[5] == (byte)83 && head[6] == (byte)67)) && (head[7] == (byte)69 && head[8] == (byte)52))
                return ".tod1rsce4";
            if (head.Length >= 8 && head[0] == (byte)84 && (head[1] == (byte)79 && head[2] == (byte)68) && (head[3] == (byte)49 && head[4] == (byte)82 && (head[5] == (byte)83 && head[6] == (byte)67)) && head[7] == (byte)69)
                return ".tod1rsce";
            if (head.Length >= 6 && head[0] == (byte)68 && (head[1] == (byte)49 && head[2] == (byte)82) && (head[3] == (byte)88 && head[4] == (byte)71 && head[5] == (byte)77))
                return ".d1rxgm";
            if (head.Length >= 4 && head[0] == (byte)84 && (head[1] == (byte)73 && head[2] == (byte)77) && head[3] == (byte)50 || head.Length >= 4 && head[0] == (byte)84 && (head[1] == (byte)77 && head[2] == (byte)50) && head[3] == (byte)64)
                return ".tm2";
            if (head.Length >= 4 && head[0] == (byte)77 && (head[1] == (byte)68 && head[2] == (byte)76) && head[3] == (byte)64)
                return ".mdl";
            if (head.Length >= 4 && head[0] == (byte)69 && (head[1] == (byte)70 && head[2] == (byte)70) && head[3] == (byte)69)
                return ".effe";
            if (head.Length >= 4 && head[0] == (byte)97 && (head[1] == (byte)110 && head[2] == (byte)112) && head[3] == (byte)51)
                return ".anp3";
            if (head.Length >= 4 && head[0] == (byte)105 && (head[1] == (byte)83 && head[2] == (byte)69) && head[3] == (byte)50)
                return ".se2";
            if (head.Length >= 4 && head[0] == (byte)105 && (head[1] == (byte)76 && head[2] == (byte)86) && head[3] == (byte)68)
                return ".lvd";
            if (head.Length >= 4 && head[0] == (byte)83 && (head[1] == (byte)67 && head[2] == (byte)69) && head[3] == (byte)68)
                return ".sced";
            if (head.Length >= 4 && head[0] == (byte)84 && (head[1] == (byte)72 && head[2] == (byte)69) && head[3] == (byte)73)
                return ".theirsce";
            if (head.Length >= 4 && head[0] == (byte)87 && (head[1] == (byte)69 && head[2] == (byte)65) && head[3] == (byte)67)
                return ".weac";
            if (head.Length >= 4 && head[0] == (byte)69 && (head[1] == (byte)78 && head[2] == (byte)69) && head[3] == (byte)77)
                return ".enem";
            return head.Length >= 4 && head[0] == (byte)3 && (head[1] != (byte)0 || head[2] != (byte)0 || head[3] != (byte)0) ? ".compress" : ".unknown";
        }

        private static void GetFileCount() => Program.dFileCount = BitConverter.ToInt32(Program.dMainFile, 0);

        private static void GetDeconstructiveInformation()
        {
            switch (Program.gSubMode)
            {
                case '0':
                    for (int index = 0; index < Program.dFileCount; ++index)
                        Program.dFileSizes.Add(BitConverter.ToInt32(Program.dMainFile, 4 + index * 4));
                    int num = 4 + 4 * Program.dFileCount;
                    for (int index = 0; index < Program.dFileCount; ++index)
                    {
                        Program.dFileOffsets.Add(num);
                        num += Program.dFileSizes[index];
                    }
                    break;
                case '1':
                    for (int index = 0; index < Program.dFileCount; ++index)
                    {
                        Program.dFileOffsets.Add(BitConverter.ToInt32(Program.dMainFile, 4 + index * 8));
                        Program.dFileSizes.Add(BitConverter.ToInt32(Program.dMainFile, 8 + index * 8));
                    }
                    break;
                case '3':
                    for (int index = 0; index < Program.dFileCount; ++index)
                        Program.dFileOffsets.Add(BitConverter.ToInt32(Program.dMainFile, 4 + index * 4));
                    for (int index = 0; index < Program.dFileCount - 1; ++index)
                        Program.dFileSizes.Add(Program.dFileOffsets[index + 1] - Program.dFileOffsets[index]);
                    Program.dFileSizes.Add(Program.dMainFile.Length - Program.dFileOffsets[Program.dFileCount - 1]);
                    break;
            }
        }

        private static bool CheckForFileSizeError()
        {
            for (int index = 0; index < Program.dFileCount; ++index)
            {
                if (Program.dFileSizes[index] == 0)
                    return true;
            }
            return false;
        }

        private static bool CheckForDupeOffsets()
        {
            for (int index1 = 0; index1 < Program.dFileCount - 1; ++index1)
            {
                for (int index2 = index1 + 1; index2 < Program.dFileCount; ++index2)
                {
                    if (Program.dFileOffsets[index1] == Program.dFileOffsets[index2])
                        return true;
                }
            }
            return false;
        }

        private static void CreateFilesInRam()
        {
            for (int index = 0; index < Program.dFileCount; ++index)
            {
                byte[] numArray = new byte[Program.dFileSizes[index]];
                Array.Copy((Array)Program.dMainFile, Program.dFileOffsets[index], (Array)numArray, 0, Program.dFileSizes[index]);
                Program.dFiles.Add(numArray);
            }
        }

        private static void AssignFileNames()
        {
            for (int index = 0; index < Program.dFileCount; ++index)
            {
                string fileName = Program.GetFileName(Program.dDirectoryName, index);
                if (Program.gDoExtensions)
                    fileName += Program.GetExtension(Program.dFiles[index]);
                Program.dFileNames.Add(fileName);
            }
        }

        private static void CreateFiles()
        {
            if (Program.gDoUnpack && Program.DoUnpackExist())
            {
                for (int index = 0; index < Program.dFileCount; ++index)
                {
                    BinaryWriter binaryWriter1 = new BinaryWriter((Stream)File.Open(Program.dDirectoryName + "/" + Program.dFileNames[index], FileMode.Create));
                    binaryWriter1.Write(Program.dFiles[index]);
                    binaryWriter1.Close();
                    if (Program.gDoVerbose)
                        Program.ColorWrite(ConsoleColor.DarkYellow, "File '{0}' has been created!", (object)Program.dFileNames[index]);
                    if (Program.IsPacked(Program.dFiles[index]))
                    {
                        string str = Program.dDirectoryName + "/" + Program.GetFileName(Program.dDirectoryName, index) + "d";
                        Program.DoExtract(Program.dDirectoryName + "/" + Program.dFileNames[index], str);
                        if (!File.Exists(str))
                        {
                            Program.ColorWrite(ConsoleColor.Red, "File '{0}' has not been created!", (object)str);
                        }
                        else
                        {
                            if (Program.gDoExtensions)
                            {
                                byte[] numArray = File.ReadAllBytes(str);
                                File.Delete(str);
                                if (Program.gDoVerbose)
                                    Program.ColorWrite(ConsoleColor.DarkRed, "File '{0}' has been deleted!", (object)str);
                                str += Program.GetExtension(numArray);
                                BinaryWriter binaryWriter2 = new BinaryWriter((Stream)File.Open(str, FileMode.Create));
                                binaryWriter2.Write(numArray);
                                binaryWriter2.Close();
                            }
                            if (Program.gDoVerbose)
                                Program.ColorWrite(ConsoleColor.DarkGreen, "File '{0}' has been decrypted to '{1}'!", (object)Program.dFileNames[index], (object)str.Substring(Program.dDirectoryName.Length + 1));
                        }
                    }
                }
            }
            else
            {
                for (int index = 0; index < Program.dFileCount; ++index)
                {
                    BinaryWriter binaryWriter = new BinaryWriter((Stream)File.Open(Program.dDirectoryName + "/" + Program.dFileNames[index], FileMode.Create));
                    binaryWriter.Write(Program.dFiles[index]);
                    binaryWriter.Close();
                    if (Program.gDoVerbose)
                        Program.ColorWrite(ConsoleColor.DarkYellow, "File '{0}' has been created!", (object)Program.dFileNames[index]);
                }
            }
        }

        private static void GetFiles()
        {
            if (Program.gDoUnpack && Program.DoUnpackExist())
            {
                for (Program.dFileCount = 0; Directory.GetFiles(Program.dDirectoryName, Program.GetFileName(Program.dDirectoryName, Program.dFileCount) + "*").Length > 0; ++Program.dFileCount)
                {
                    string fileName = Program.GetFileName(Program.dDirectoryName, Program.dFileCount);
                    string[] files1 = Directory.GetFiles(Program.dDirectoryName, fileName + "d*");
                    if (files1.Length > 0)
                    {
                        Program.DoCompress(files1[0], files1[0] + "c");
                        Program.dFiles.Add(File.ReadAllBytes(files1[0] + "c"));
                        File.Delete(files1[0] + "c");
                        if (Program.gDoVerbose)
                            Program.ColorWrite(ConsoleColor.Yellow, "File '{0}' was compressed before adding to RAM!", (object)files1[0].Substring(6));
                    }
                    else
                    {
                        string[] files2 = Directory.GetFiles(Program.dDirectoryName, fileName + "*");
                        if (files2.Length == 0)
                        {
                            Program.ColorWrite(ConsoleColor.Red, "ERROR! No file called '{0}' found!", (object)fileName);
                            Environment.Exit(0);
                        }
                        Program.dFiles.Add(File.ReadAllBytes(files2[0]));
                        if (Program.gDoVerbose)
                            Program.ColorWrite(ConsoleColor.Yellow, "File '{0}' added to RAM!", (object)files2[0].Substring(6));
                    }
                }
            }
            else
            {
                for (Program.dFileCount = 0; Directory.GetFiles(Program.dDirectoryName, Program.GetFileName(Program.dDirectoryName, Program.dFileCount) + "*").Length > 0; ++Program.dFileCount)
                {
                    string fileName = Program.GetFileName(Program.dDirectoryName, Program.dFileCount);
                    string[] files = Directory.GetFiles(Program.dDirectoryName, fileName + "*");
                    if (files.Length > 0)
                    {
                        Program.dFiles.Add(File.ReadAllBytes(files[0]));
                        if (Program.gDoVerbose)
                            Program.ColorWrite(ConsoleColor.Yellow, "File '{0}' added to RAM!", (object)files[0].Substring(6));
                    }
                }
            }
        }

        private static bool CheckForNoneFiles() => Program.dFileCount == 0;

        private static void SetConstructiveInformation()
        {
            int num = 0;
            for (int index = 0; index < Program.dFileCount; ++index)
            {
                Program.dFileSizes.Add(Program.dFiles[index].Length);
                Program.dFileOffsets.Add(num);
                num += Program.dFileSizes[index];
            }
            if (!Program.gDoToD2)
                return;
            Program.ChangeFile();
        }

        private static void DoAssemble()
        {
            BinaryWriter binaryWriter = new BinaryWriter((Stream)File.Open(string.Format(Program.gObject + ".pak{0}", (object)Program.gSubMode), FileMode.Create));
            switch (Program.gSubMode)
            {
                case '0':
                    binaryWriter.Write(Program.dFileCount);
                    for (int index = 0; index < Program.dFileCount; ++index)
                        binaryWriter.Write(Program.dFileSizes[index]);
                    for (int index = 0; index < Program.dFileCount; ++index)
                        binaryWriter.Write(Program.dFiles[index]);
                    break;
                case '1':
                    int num1 = 4 + 8 * Program.dFileCount;
                    binaryWriter.Write(Program.dFileCount);
                    for (int index = 0; index < Program.dFileCount; ++index)
                    {
                        binaryWriter.Write(Program.dFileOffsets[index] + num1);
                        binaryWriter.Write(Program.dFileSizes[index]);
                    }
                    for (int index = 0; index < Program.dFileCount; ++index)
                        binaryWriter.Write(Program.dFiles[index]);
                    break;
                case '3':
                    int num2 = 4 + 4 * Program.dFileCount;
                    binaryWriter.Write(Program.dFileCount);
                    for (int index = 0; index < Program.dFileCount; ++index)
                        binaryWriter.Write(Program.dFileOffsets[index] + num2);
                    for (int index = 0; index < Program.dFileCount; ++index)
                        binaryWriter.Write(Program.dFiles[index]);
                    break;
            }
            binaryWriter.Close();
        }

        private static void ChangeFile()
        {
            int num1 = (4 + 8 * Program.dFileCount + Program.dFileSizes[0] + Program.dFileSizes[1] + Program.dFileSizes[2]) % 16;
            if (num1 <= 0)
                return;
            int num2 = 16 - num1;
            byte[] numArray = new byte[Program.dFileSizes[2] + num2];
            numArray.Initialize();
            Program.dFiles[2].CopyTo((Array)numArray, 0);
            Program.dFiles[2] = numArray;
            Program.dFileSizes[2] = Program.dFiles[2].Length;
            int num3 = 0;
            for (int index = 0; index < Program.dFileCount; ++index)
            {
                Program.dFileOffsets[index] = num3;
                num3 += Program.dFileSizes[index];
            }
        }

        private static bool DoUnpackExist() => File.Exists("comptoe.exe");

        private static bool IsPacked(byte[] file)
        {
            if (file[0] != (byte)3)
                return false;
            return file[1] != (byte)0 || file[2] != (byte)0 || file[3] != (byte)0;
        }

        private static void DoExtract(string fileoriginal, string filenew) => Process.Start("comptoe.exe", string.Format("-d {0} {1}", (object)fileoriginal, (object)filenew)).WaitForExit();

        private static void DoCompress(string filedecompressed, string filecompressed) => Process.Start("comptoe.exe", string.Format("-c {0} {1}", (object)filedecompressed, (object)filecompressed)).WaitForExit();

        private static void DoDeconstruct()
        {
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.White, "Reading all bytes of initial file into RAM...");
            Program.dMainFile = File.ReadAllBytes(Program.gObject);
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.White, "Reading first 4 bytes (count of files)...");
            Program.GetFileCount();
            Program.ColorWrite(ConsoleColor.Green, "Count of files inside archive: {0}", (object)Program.dFileCount);
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.White, "Extracting information about offsets and sizes...");
            Program.GetDeconstructiveInformation();
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.White, "Information extracted. Showing information about sizes and offsets.");
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.Yellow, "File offsets: ");
            if (Program.gDoVerbose)
            {
                for (int index = 0; index < Program.dFileCount; ++index)
                    Program.ColorWrite(ConsoleColor.White, Program.dFileOffsets[index].ToString());
            }
            if (Program.gDoVerbose)
                Console.WriteLine();
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.Yellow, "File sizes: ");
            if (Program.gDoVerbose)
            {
                for (int index = 0; index < Program.dFileCount; ++index)
                    Program.ColorWrite(ConsoleColor.White, Program.dFileSizes[index].ToString());
            }
            if (Program.gDoVerbose)
                Console.WriteLine();
            if (Program.CheckForFileSizeError())
                Program.ColorWrite(ConsoleColor.Red, "Error! One of files have negative or zero file size!");
            else if (Program.CheckForDupeOffsets())
            {
                Program.ColorWrite(ConsoleColor.Red, "Error! One of files have same offset as another!");
            }
            else
            {
                Program.ColorWrite(ConsoleColor.Green, "No errors found!");
                if (Program.gDoVerbose)
                    Program.ColorWrite(ConsoleColor.White, "Creating files inside RAM...");
                Program.CreateFilesInRam();
                if (Program.gDoVerbose)
                    Program.ColorWrite(ConsoleColor.White, "Assigning file names...");
                Program.AssignFileNames();
                if (File.Exists(Program.dDirectoryName))
                    Program.ColorWrite(ConsoleColor.Red, "Error! File '{0}' exists! Can't proceed!", (object)Program.dDirectoryName);
                else if (Directory.Exists(Program.dDirectoryName))
                {
                    Program.ColorWrite(ConsoleColor.Red, "Error! Directory '{0}' exists! Can't proceed!", (object)Program.dDirectoryName);
                }
                else
                {
                    Program.ColorWrite(ConsoleColor.Green, "Creating new directory '{0}' to store files...", (object)Program.dDirectoryName);
                    Directory.CreateDirectory(Program.dDirectoryName);
                    Program.ColorWrite(ConsoleColor.Green, "Creating files...");
                    Program.CreateFiles();
                    Program.ColorWritePlus(ConsoleColor.White, ConsoleColor.Gray, "All work done!");
                }
            }
        }

        private static void DoConstruct()
        {
            if (Program.gDoVerbose)
                Program.ColorWrite(ConsoleColor.White, "Reading all files from folder into RAM...");
            Program.GetFiles();
            if (Program.CheckForNoneFiles())
            {
                Program.ColorWrite(ConsoleColor.Red, "Error! There is no complitable files in folder!");
            }
            else
            {
                Program.ColorWrite(ConsoleColor.Green, "Count of files inside directory: {0}", (object)Program.dFileCount);
                if (Program.gDoVerbose)
                    Program.ColorWrite(ConsoleColor.White, "Getting information for construction...");
                Program.SetConstructiveInformation();
                string path = Program.dDirectoryName + ".pak" + (object)Program.gSubMode;
                if (File.Exists(path))
                {
                    Program.ColorWrite(ConsoleColor.Red, "Error! File '{0}' is already exists!", (object)path);
                }
                else
                {
                    Program.ColorWrite(ConsoleColor.Green, "Assembling '{0}'...", (object)path);
                    Program.DoAssemble();
                    Program.ColorWritePlus(ConsoleColor.White, ConsoleColor.Gray, "All work done!");
                }
            }
        }

        private static void DoTest()
        {
            byte[] numArray = File.ReadAllBytes(Program.gObject);
            List<int> intList = new List<int>();
            List<string> stringList = new List<string>();
            for (int index = 0; index < 30; ++index)
            {
                intList.Add(BitConverter.ToInt32(numArray, index * 4));
                stringList.Add(BitConverter.ToString(numArray, index * 4, 4));
            }
            Program.ColorWritePlus(ConsoleColor.White, ConsoleColor.Blue, "Mode: 1/(1)");
            Program.ColorWrite(ConsoleColor.Yellow, "First 4bytes: {0} ({1})", (object)intList[0], (object)stringList[0]);
            Program.ColorWrite(ConsoleColor.Yellow, "Next bytes:");
            for (int index = 1; index < 30; ++index)
                Program.ColorWrite(ConsoleColor.White, "{0} ({1})", (object)intList[index], (object)stringList[index]);
            Program.ColorWritePlus(ConsoleColor.White, ConsoleColor.Blue, "Mode: 1/(2)");
            Program.ColorWrite(ConsoleColor.Yellow, "First 4bytes: {0} ({1})", (object)intList[0], (object)stringList[0]);
            Program.ColorWrite(ConsoleColor.Yellow, "Next bytes:");
            for (int index = 1; index < 15; ++index)
                Program.ColorWrite(ConsoleColor.White, "{0} ({1}) | {2} ({3})", (object)intList[2 * index - 1], (object)stringList[2 * index - 1], (object)intList[2 * index], (object)stringList[2 * index]);
            Program.ColorWritePlus(ConsoleColor.White, ConsoleColor.Blue, "Mode: 1/(3)");
            Program.ColorWrite(ConsoleColor.Yellow, "First 4bytes: {0} ({1})", (object)intList[0], (object)stringList[0]);
            Program.ColorWrite(ConsoleColor.Yellow, "Next bytes:");
            for (int index = 1; index < 10; ++index)
                Program.ColorWrite(ConsoleColor.White, "{0} ({1}) | {2} ({3}) | {4} ({5})", (object)intList[3 * index - 2], (object)stringList[3 * index - 2], (object)intList[3 * index - 1], (object)stringList[3 * index - 1], (object)intList[3 * index], (object)stringList[3 * index]);
            Program.ColorWrite(ConsoleColor.Cyan, "Test ended!");
        }

        private static void Main(string[] args)
        {
            if (args.Length == 0 || args[0] == "-help")
            {
                string processName = Process.GetCurrentProcess().ProcessName;
                Program.ColorWrite(ConsoleColor.Green, "Pakomposer v1.9fix2 Clone");
                Program.ColorWrite(ConsoleColor.Green, "Generously donated by Temple of Tales Translations team");
                Program.ColorWrite(ConsoleColor.Green, "http://temple-tales.ru/translations.html");
                Program.ColorWrite(ConsoleColor.White, "Program that disassembles and assembles archives from Tales of... game series.");
                Console.WriteLine("Usage:");
                Console.WriteLine(processName + ".exe ([action flag] [file/folder name]) ([mode flag]) ([addictional flags])");
                Console.WriteLine(" ");
                Console.WriteLine("Action flags:");
                Console.WriteLine("-d - decompose / split to files");
                Console.WriteLine("-c - compose / put everything in 1 file");
                Console.WriteLine("-t - test (debug) file");
                Console.WriteLine("Mode flags:");
                Console.WriteLine("-0 - work with pak0 files");
                Console.WriteLine("-1 - work with pak1 files");
                Console.WriteLine("-3 - work with pak3 files");
                Console.WriteLine("Additional flags:");
                Console.WriteLine("-x - try to set extensions to files");
                Console.WriteLine("-v - verbose mode");
                Console.WriteLine("-u - automatically use comptoe.exe (needs comptoe.exe be in the same folder as {0}.exe)", (object)processName);
                Console.WriteLine("-tod2_ps2_skit_padding - padding addition mode");
                Console.WriteLine("-toddc_skit_fix - change offset at 0x00000004 from 24 to 30 - To be implemented");
                Console.WriteLine("-toddc_tm2_fix - pad with 00 and update header - To be implemented");
                Console.WriteLine(" ");
                Program.ColorWritePlus(ConsoleColor.Yellow, ConsoleColor.Blue, "WARNING! DON'T WORK WITH FILES WITH");
                Program.ColorWritePlus(ConsoleColor.Yellow, ConsoleColor.Blue, "EXTENSIONS WHEN COMPRESSING BACK! BE CAREFUL!");
                Console.WriteLine(" ");
                Console.WriteLine("Examples of usage:");
                Console.WriteLine(processName + ".exe -d 00000.pak0 -0 -u");
                Console.WriteLine(processName + ".exe -d 00000.pak1 -1 -x -v");
                Console.WriteLine(processName + ".exe -d 00000.pak3 -3 -x");
                Console.WriteLine(processName + ".exe -c 00000 -0");
                Console.WriteLine(processName + ".exe -c 00000 -1 -v");
                Console.WriteLine(processName + ".exe -c 00000 -3 -v -u -x");
            }
            else
            {
                Program.GetFlags(args);
                if (Program.gMode == 'N')
                    Program.ColorWrite(ConsoleColor.Red, "Error - you haven't specified main flag! (-d or -c)");
                else if (Program.gObject == "" || Program.gMode == 'D' && !File.Exists(Program.gObject) || (Program.gMode == 'T' && !File.Exists(Program.gObject) || Program.gMode == 'C' && !Directory.Exists(Program.gObject)))
                    Program.ColorWrite(ConsoleColor.Red, "Error - you specified wrong filename/directory!");
                else if (Program.gSubMode == 'N')
                {
                    Program.ColorWrite(ConsoleColor.Red, "Error - you haven't specified mode flag! (-0 or -1 or -3)");
                }
                else
                {
                    switch (Program.gMode)
                    {
                        case 'C':
                            Program.ColorWrite(ConsoleColor.White, "Composition to '{0}.pak{1}' started", (object)Program.gObject, (object)Program.gSubMode);
                            Program.dDirectoryName = Program.gObject;
                            Program.DoConstruct();
                            break;
                        case 'D':
                            Program.ColorWrite(ConsoleColor.White, "Decomposition of '{0}' started", (object)Program.gObject, (object)Program.gSubMode);
                            Program.dDirectoryName = Program.CutToExtension(Program.gObject);
                            Program.DoDeconstruct();
                            break;
                        case 'T':
                            Program.ColorWrite(ConsoleColor.White, "Testing of '{0}' started!", (object)Program.gObject);
                            Program.DoTest();
                            break;
                    }
                }
            }
        }
    }
}
