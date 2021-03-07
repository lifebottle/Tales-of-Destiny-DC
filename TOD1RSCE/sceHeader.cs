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
                    if (num >> 4 == 1 && sfa.ReadByte() == 0x0)
                    {
                        fileStrings.Add(new sceStrings((uint)sfa.PositionStream - 1, offsetStrings)
                        {
                            offset = ((uint)num & 0xF) + offsetStrings,
                            typeOffset = sceStrings.OffsetType.ShortOffset
                        });
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

        public void WriteStrings(StreamFunctionAdd sfa)
        {
            sfa.PositionStream = offsetStrings;
            sfa.LengthStream = offsetStrings;
            for (int index = 0; index < fileStrings.Count; ++index)
            {
                fileStrings[index].WriteData(sfa);
                if (index > 0)
                {
                    uint num1 = fileStrings[index].offset - offsetStrings;
                    sfa.PositionStream = fileStrings[index].myOffset - 1U;
                    if (num1 < 0x10)
                    {
                        byte num2 = (byte)(0x10 + num1);
                        sfa.WriteByte(num2);
                        sfa.WriteByte(0);
                    }
                    else if (num1 < 0x1000)
                    {
                        byte num2 = (byte)(0x50 + (num1 >> 8));
                        sfa.WriteByte(num2);
                        byte num3 = (byte)(num1 & byte.MaxValue);
                        sfa.WriteUInt16(num3);
                    }
                    else if (num1 > 0xFFF)
                    {
                        sfa.WriteByte(0x90);
                        sfa.WriteUInt16((ushort)num1);
                    }
                    sfa.PositionStream = sfa.LengthStream;
                }
            }
            sfa.SeekValueWrite(2U);
        }
    }
}