using StreamFAdd;
using System.Collections.Generic;

namespace sceWork
{
    internal class sceStrings
    {
        public uint baseOffset;
        public byte typeOffset;
        public uint myOffset;
        public uint offset;
        public List<byte> data;

        public sceStrings(uint off, uint boff)
        {
            this.baseOffset = boff;
            this.myOffset = off;
            this.offset = 0U;
            this.data = new List<byte>();
        }

        public void ReadData(StreamFunctionAdd sfa, int size = -1)
        {
            sfa.PositionStream = (long)this.offset;
            if (size <= 0)
                return;
            for (int index = 0; index < size; ++index)
                this.data.Add(sfa.ReadByte());
        }

        public void WriteData(StreamFunctionAdd sfa)
        {
            if (this.typeOffset == (byte)3 && sfa.PositionStream - (long)this.baseOffset < 4095L)
            {
                while (sfa.PositionStream - (long)this.baseOffset < 4095L)
                    sfa.WriteByte((byte)0);
            }
            this.offset = (uint)sfa.PositionStream;
            sfa.WriteBytes(this.data.ToArray());
        }
    }
}