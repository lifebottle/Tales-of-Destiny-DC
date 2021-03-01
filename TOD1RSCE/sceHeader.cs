using StreamFAdd;
using System;
using System.Collections.Generic;

namespace sceWork
{
    internal class sceHeader
    {
        public uint offsetScript;
        public uint offsetStrings;
        public List<sceStrings> str;
        public List<int> sizes;

        public sceHeader(StreamFunctionAdd sfa)
        {
            this.offsetScript = !(sfa.ReadAnsiStringSize(8) != "TOD1RSCE") ? sfa.ReadUInt32() : throw new Exception("Error #1: Bad Magic");
            this.offsetStrings = sfa.ReadUInt32();
            this.str = new List<sceStrings>();
            this.sizes = new List<int>();
            sfa.PositionStream = (long)this.offsetScript;
            while (sfa.PositionStream < (long)this.offsetStrings)
            {
                if (sfa.ReadByte() == 0x47)
                {
                    byte num = sfa.ReadByte();
                    if ((int)num >> 4 == 1 && sfa.ReadByte() == (byte)0)
                    {
                        this.str.Add(new sceStrings((uint)sfa.PositionStream-1, this.offsetStrings)
                        {
                            offset = ((uint)num & 0xF) + this.offsetStrings,
                            typeOffset = (byte)1
                        });
                    }
                    if ((int)num >> 4 == 5)
                    {
                        sceStrings sceStrings = new sceStrings((uint)sfa.PositionStream, this.offsetStrings);
                        sceStrings.offset = (uint)(((int)num & 0xF) << 8) + (uint)sfa.ReadByte() + this.offsetStrings;
                        sceStrings.typeOffset = (byte)2;
                        if (sfa.ReadByte() == (byte)0)
                            this.str.Add(sceStrings);
                    }
                    if (num == 0x90)
                    {
                        sceStrings sceStrings = new sceStrings((uint)sfa.PositionStream, this.offsetStrings);
                        sceStrings.offset = (uint)sfa.ReadUInt16() + this.offsetStrings;
                        sceStrings.typeOffset = (byte)3;
                        if (sfa.ReadByte() == (byte)0)
                            this.str.Add(sceStrings);
                    }
                }
            }
            this.str.Sort((Comparison<sceStrings>)((s1, s2) => s1.offset.CompareTo(s2.offset)));
            for (int index = 0; index < this.str.Count; ++index)
            {
                if (index < this.str.Count - 1)
                    this.sizes.Add((int)this.str[index + 1].offset - (int)this.str[index].offset);
                else
                    this.sizes.Add((int)(uint)sfa.LengthStream - (int)this.str[index].offset);
            }
            for (int index = 0; index < this.str.Count; ++index)
                this.str[index].ReadData(sfa, this.sizes[index]);
        }

        public void WriteStrings(StreamFunctionAdd sfa)
        {
            sfa.PositionStream = (long)this.offsetStrings;
            sfa.LengthStream = (long)this.offsetStrings;
            for (int index = 0; index < this.str.Count; ++index)
            {
                this.str[index].WriteData(sfa);
                if (index > 0)
                {
                    uint num1 = this.str[index].offset - this.offsetStrings;
                    sfa.PositionStream = (long)(this.str[index].myOffset - 1U);
                    if (num1 < 0x10)
                    {
                        byte num2 = (byte)(0x10 + num1);
                        sfa.WriteByte(num2);
                        sfa.WriteByte((byte)0);
                    }
                    else if (num1 < 0x1000)
                    {
                        byte num2 = (byte)(0x50 + (num1 >> 8));
                        sfa.WriteByte(num2);
                        byte num3 = (byte)(num1 & (uint)byte.MaxValue);
                        sfa.WriteUInt16((ushort)num3);
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