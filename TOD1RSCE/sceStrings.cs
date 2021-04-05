using StreamFAdd;
using System.Collections.Generic;

namespace sceWork
{
    internal class sceStrings
    {
        public enum OffsetType
        {
            ShortOffset = 1,
            MediumOffset = 2,
            LargeOffset = 3,
        }

        public uint baseOffset;
        public OffsetType typeOffset;
        public uint myOffset;
        public uint offset;
        public List<byte> data;

        public sceStrings(uint off, uint boff)
        {
            baseOffset = boff;
            myOffset = off;
            offset = 0U;
            data = new List<byte>();
        }

        public void ReadData(StreamFunctionAdd sfa, int size = -1)
        {
            sfa.PositionStream = offset;
            if (size <= 0)
                return;
            for (int index = 0; index < size; ++index)
                data.Add(sfa.ReadByte());
        }

        public void WriteData(StreamFunctionAdd sfa)
        {
            if (typeOffset == OffsetType.LargeOffset && sfa.PositionStream - baseOffset < 4095L)
            {
                while (sfa.PositionStream - baseOffset < 4095L)
                    sfa.WriteByte(0);
            }
            offset = (uint)sfa.PositionStream;
            sfa.WriteBytes(data.ToArray());
        }
    }
}