using StreamFAdd;
using System;
using System.Collections.Generic;

namespace sceWork
{
    internal class sceHeader
    {
        public uint offsetScript;
        public uint offsetStrings;
        public List<sceStrings> fileStrings;
        public List<int> lineNumberList;
        public List<string> plainStringList;
        public List<int> sizes;

        public sceHeader(StreamFunctionAdd sfa)
        {
            if (sfa.ReadAnsiStringSize(8) != "TOD1RSCE")
            {
                throw new Exception("Error #1: Bad Magic");
            }
            offsetScript = sfa.ReadUInt32();
            offsetStrings = sfa.ReadUInt32();
            fileStrings = new List<sceStrings>();
            sizes = new List<int>();
            sfa.PositionStream = offsetScript;
            while (sfa.PositionStream < offsetStrings)
            {
                //The file is composed by some bytecode above and strings below
                //then the game gets the offset to a string whith the opcode 0x47
                //so we loop until then, it can get some false positives though
                if (sfa.ReadByte() == 0x47)
                {
                    byte num = sfa.ReadByte();
                    if (num >> 4 == 1)
                    {
                        if (sfa.ReadByte() == 0x0)
                        {
                            fileStrings.Add(new sceStrings((uint)sfa.PositionStream - 1, offsetStrings)
                            {
                                offset = ((uint)num & 0xF) + offsetStrings,
                                typeOffset = sceStrings.OffsetType.ShortOffset
                            });
                        }
                        else
                        {
                            sfa.PositionStream--;
                        }
                    }
                    if (num >> 4 == 5)
                    {
                        sceStrings sceStrings = new sceStrings((uint)sfa.PositionStream, offsetStrings);
                        sceStrings.offset = (uint)((num & 0xF) << 8) + sfa.ReadByte() + offsetStrings;
                        sceStrings.typeOffset = sceStrings.OffsetType.MediumOffset;
                        if (sfa.ReadByte() == 0)
                            fileStrings.Add(sceStrings);
                    }
                    if (num == 0x90)
                    {
                        sceStrings sceStrings = new sceStrings((uint)sfa.PositionStream, offsetStrings);
                        sceStrings.offset = sfa.ReadUInt16() + offsetStrings;
                        sceStrings.typeOffset = sceStrings.OffsetType.LargeOffset;
                        if (sfa.ReadByte() == 0)
                            fileStrings.Add(sceStrings);
                    }
                }
            }

            //order the offsets by string position
            fileStrings.Sort((s1, s2) => s1.offset.CompareTo(s2.offset));

            //Get sizes
            for (int index = 0; index < fileStrings.Count; ++index)
            {
                if (index < fileStrings.Count - 1)
                    sizes.Add((int)fileStrings[index + 1].offset - (int)fileStrings[index].offset);
                else
                    sizes.Add((int)(uint)sfa.LengthStream - (int)fileStrings[index].offset);
            }
            for (int index = 0; index < fileStrings.Count; ++index)
                fileStrings[index].ReadData(sfa, sizes[index]);
        }

        public void WriteStrings(StreamFunctionAdd sfa, bool dedup = false)
        {
            sfa.PositionStream = offsetStrings;
            sfa.LengthStream = offsetStrings;
            long realPos = 0;
            bool matched = false;
            for (int index = 0; index < fileStrings.Count; ++index)
            {
                if (dedup)
                {
                    for (int index1 = index - 1; index1 >= 0; --index1)
                    {
                        if (index == 0) break;
                        if (fileStrings[index].data.Count == fileStrings[index1].data.Count)
                        {
                            if (System.Linq.Enumerable.SequenceEqual(fileStrings[index].data, fileStrings[index1].data))
                            {
                                realPos = sfa.PositionStream;
                                fileStrings[index].offset = fileStrings[index1].offset;
                                matched = true;
                                break;
                            }
                        }
                    }

                    if (!matched)
                        fileStrings[index].WriteData(sfa);
                }
                else
                {
                    fileStrings[index].WriteData(sfa);
                }

                if (index > 0)
                {
                    uint num1 = fileStrings[index].offset - offsetStrings;
                    sfa.PositionStream = fileStrings[index].myOffset - 1U;
                    if (num1 < 0x10 && fileStrings[index].typeOffset == sceStrings.OffsetType.ShortOffset)
                    {
                        byte num2 = (byte)(0x10 + num1);
                        sfa.WriteByte(num2);
                        sfa.WriteByte(0);
                    }
                    else if (num1 < 0x1000 && fileStrings[index].typeOffset == sceStrings.OffsetType.MediumOffset)
                    {
                        byte num2 = (byte)(0x50 + (num1 >> 8));
                        sfa.WriteByte(num2);
                        byte num3 = (byte)(num1 & byte.MaxValue);
                        sfa.WriteUInt16(num3);
                    }
                    else if (num1 < 0x10000 && fileStrings[index].typeOffset == sceStrings.OffsetType.LargeOffset)
                    {
                        sfa.WriteByte(0x90);
                        sfa.WriteUInt16((ushort)num1);
                    }
                    else
                    {
                        Console.WriteLine("Can't fit desired pointer in the available space...");
                        Console.WriteLine("- Failed at block: " + index + ", around line " + lineNumberList[index]);
                        Console.WriteLine("- Intended offset: " + num1);
                        Console.WriteLine(string.Format("- Position: 0x{0:X6}", fileStrings[index].offset));
                        Console.WriteLine("- Pointer type: " + fileStrings[index].typeOffset);
                        Console.OutputEncoding = System.Text.Encoding.UTF8;
                        Console.WriteLine("- String: " + plainStringList[index]);
                        Console.WriteLine("Leaving pointer unchanged...");
                        Console.ReadKey();
                        //throw new InvalidOperationException();
                    }

                    if (matched)
                    {
                        sfa.PositionStream = realPos;
                        matched = false;
                        continue;
                    }
                    sfa.PositionStream = sfa.LengthStream;
                }
            }
            sfa.SeekValueWrite(2U);
        }
    }
}