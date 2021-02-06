using System;
using System.IO;

namespace StreamFAdd
{
    public class StreamFunctionAdd
    {
        private Stream Source;
        private ByteEncoding Encoding;

        public long LengthStream
        {
            get => this.Source.Length;
            set => this.Source.SetLength(value);
        }

        public long PositionStream
        {
            get => this.Source.Position;
            set => this.Source.Position = value;
        }

        public Stream GetSource() => this.Source;

        public StreamFunctionAdd(Stream source, ByteEncoding encoding = ByteEncoding.Little)
        {
            this.Source = source;
            this.Encoding = encoding;
            if (this.Encoding != ByteEncoding.Selected)
                return;
            this.Encoding = ByteEncoding.Little;
        }

        public StreamFunctionAdd(string FileName, ByteEncoding encoding = ByteEncoding.Little)
        {
            this.Source = (Stream)new FileStream(FileName, FileMode.OpenOrCreate, FileAccess.ReadWrite);
            this.Encoding = encoding;
            if (this.Encoding != ByteEncoding.Selected)
                return;
            this.Encoding = ByteEncoding.Little;
        }

        public StreamFunctionAdd(ByteEncoding encoding = ByteEncoding.Little)
        {
            this.Source = (Stream)new MemoryStream();
            this.Encoding = encoding;
            if (this.Encoding != ByteEncoding.Selected)
                return;
            this.Encoding = ByteEncoding.Little;
        }

        public void ChangeByteEncoding(ByteEncoding encoding)
        {
            if (encoding == ByteEncoding.Selected)
                return;
            this.Encoding = encoding;
        }

        public void Dispose() => this.Source.Dispose();

        public byte ReadByte()
        {
            int num = this.Source.ReadByte();
            return num != -1 ? (byte)num : throw new EndOfStreamException("Stream end");
        }

        public byte[] ReadBytes(int count)
        {
            byte[] buffer = new byte[count];
            this.Source.Read(buffer, 0, count);
            return buffer;
        }

        public short ReadInt16(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            short num = 0;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding == ByteEncoding.Big)
                    num = (short)((int)this.ReadByte() << 8 | (int)this.ReadByte());
            }
            else
                num = (short)((int)this.ReadByte() | (int)this.ReadByte() << 8);
            return num;
        }

        public ushort ReadUInt16(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            ushort num = 0;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding == ByteEncoding.Big)
                    num = (ushort)((uint)this.ReadByte() << 8 | (uint)this.ReadByte());
            }
            else
                num = (ushort)((uint)this.ReadByte() | (uint)this.ReadByte() << 8);
            return num;
        }

        public int ReadInt32(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            int num = 0;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding == ByteEncoding.Big)
                    num = (int)this.ReadByte() << 24 | (int)this.ReadByte() << 16 | (int)this.ReadByte() << 8 | (int)this.ReadByte();
            }
            else
                num = (int)this.ReadByte() | (int)this.ReadByte() << 8 | (int)this.ReadByte() << 16 | (int)this.ReadByte() << 24;
            return num;
        }

        public uint ReadUInt32(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            uint num = 0;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding == ByteEncoding.Big)
                    num = (uint)((int)this.ReadByte() << 24 | (int)this.ReadByte() << 16 | (int)this.ReadByte() << 8) | (uint)this.ReadByte();
            }
            else
                num = (uint)((int)this.ReadByte() | (int)this.ReadByte() << 8 | (int)this.ReadByte() << 16 | (int)this.ReadByte() << 24);
            return num;
        }

        public long ReadInt64(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            long num = 0;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding == ByteEncoding.Big)
                    num = (long)(this.ReadUInt32() << 24 | this.ReadUInt32());
            }
            else
                num = (long)(this.ReadUInt32() | this.ReadUInt32() << 24);
            return num;
        }

        public ulong ReadUInt64(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            ulong num = ulong.MaxValue;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding == ByteEncoding.Big)
                    num = (ulong)(this.ReadUInt32() << 24 | this.ReadUInt32());
            }
            else
                num = (ulong)(this.ReadUInt32() | this.ReadUInt32() << 24);
            return num;
        }

        public float ReadFloat(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            return BitConverter.ToSingle(BitConverter.GetBytes(this.ReadUInt32(encoding)), 0);
        }

        public float ReadFloatBR(ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            byte[] numArray = new BinaryReader(this.Source).ReadBytes(4);
            if (encoding == ByteEncoding.Big)
            {
                byte num1 = numArray[0];
                numArray[0] = numArray[3];
                numArray[3] = num1;
                byte num2 = numArray[1];
                numArray[1] = numArray[2];
                numArray[2] = num2;
            }
            return BitConverter.ToSingle(numArray, 0);
        }

        public void WriteByte(byte value) => this.Source.WriteByte(value);

        public void WriteBytes(byte[] bytes) => this.Source.Write(bytes, 0, bytes.Length);

        public void WriteInt16(short value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding != ByteEncoding.Big)
                    return;
                this.WriteByte((byte)((int)value >> 8 & (int)byte.MaxValue));
                this.WriteByte((byte)((uint)value & (uint)byte.MaxValue));
            }
            else
            {
                this.WriteByte((byte)((uint)value & (uint)byte.MaxValue));
                this.WriteByte((byte)((int)value >> 8 & (int)byte.MaxValue));
            }
        }

        public void WriteUInt16(ushort value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding != ByteEncoding.Big)
                    return;
                this.WriteByte((byte)((int)value >> 8 & (int)byte.MaxValue));
                this.WriteByte((byte)((uint)value & (uint)byte.MaxValue));
            }
            else
            {
                this.WriteByte((byte)((uint)value & (uint)byte.MaxValue));
                this.WriteByte((byte)((int)value >> 8 & (int)byte.MaxValue));
            }
        }

        public void WriteInt32(int value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding != ByteEncoding.Big)
                    return;
                this.WriteByte((byte)(value >> 24 & (int)byte.MaxValue));
                this.WriteByte((byte)(value >> 16 & (int)byte.MaxValue));
                this.WriteByte((byte)(value >> 8 & (int)byte.MaxValue));
                this.WriteByte((byte)(value & (int)byte.MaxValue));
            }
            else
            {
                this.WriteByte((byte)(value & (int)byte.MaxValue));
                this.WriteByte((byte)(value >> 8 & (int)byte.MaxValue));
                this.WriteByte((byte)(value >> 16 & (int)byte.MaxValue));
                this.WriteByte((byte)(value >> 24 & (int)byte.MaxValue));
            }
        }

        public void WriteUInt32(uint value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding != ByteEncoding.Big)
                    return;
                this.WriteByte((byte)(value >> 24 & (uint)byte.MaxValue));
                this.WriteByte((byte)(value >> 16 & (uint)byte.MaxValue));
                this.WriteByte((byte)(value >> 8 & (uint)byte.MaxValue));
                this.WriteByte((byte)(value & (uint)byte.MaxValue));
            }
            else
            {
                this.WriteByte((byte)(value & (uint)byte.MaxValue));
                this.WriteByte((byte)(value >> 8 & (uint)byte.MaxValue));
                this.WriteByte((byte)(value >> 16 & (uint)byte.MaxValue));
                this.WriteByte((byte)(value >> 24 & (uint)byte.MaxValue));
            }
        }

        public void WriteInt64(long value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding != ByteEncoding.Big)
                    return;
                this.WriteByte((byte)((ulong)(value >> 56) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 48) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 40) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 32) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 24) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 16) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 8) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)value & (ulong)byte.MaxValue));
            }
            else
            {
                this.WriteByte((byte)((ulong)value & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 8) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 16) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 24) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 32) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 40) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 48) & (ulong)byte.MaxValue));
                this.WriteByte((byte)((ulong)(value >> 56) & (ulong)byte.MaxValue));
            }
        }

        public void WriteUInt64(ulong value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            if (encoding != ByteEncoding.Little)
            {
                if (encoding != ByteEncoding.Big)
                    return;
                this.WriteByte((byte)(value >> 56 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 48 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 40 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 32 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 24 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 16 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 8 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value & (ulong)byte.MaxValue));
            }
            else
            {
                this.WriteByte((byte)(value & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 8 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 16 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 24 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 32 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 40 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 48 & (ulong)byte.MaxValue));
                this.WriteByte((byte)(value >> 56 & (ulong)byte.MaxValue));
            }
        }

        public void WriteFloat(float value, ByteEncoding encoding = ByteEncoding.Selected)
        {
            if (encoding == ByteEncoding.Selected)
                encoding = this.Encoding;
            this.WriteUInt32(BitConverter.ToUInt32(BitConverter.GetBytes(value), 0), encoding);
        }

        public void CopyPartFrom(Stream from, int size, int buffersize = 4096)
        {
            if (size <= 0)
                throw new Exception("Block size = 0");
            byte[] buffer = new byte[buffersize];
            if (from.Position + (long)size > from.Length)
                size = (int)(from.Length - from.Position);
            int num = size;
            int count1 = buffersize;
            if (count1 > num)
                count1 = num;
            int count2;
            while ((count2 = from.Read(buffer, 0, count1)) != 0)
            {
                this.Source.Write(buffer, 0, count2);
                num -= count2;
                if (count1 > num)
                    count1 = num;
            }
        }

        public void CopyPartFrom(byte[] from, int size, int indx = 0, int buffersize = 4096)
        {
            if (size <= 0)
                throw new Exception("Block size = 0");
            if (indx + size > from.Length)
                size = from.Length - indx;
            int num = size;
            int count = buffersize;
            if (count > num)
                count = num;
            do
            {
                this.Source.Write(from, indx, count);
                indx += count;
                num -= count;
                if (count > num)
                    count = num;
            }
            while (indx < from.Length);
        }

        public void CopyPartTo(Stream destination, int size, int buffersize = 4096)
        {
            if (size <= 0)
                throw new Exception("Block size = 0");
            byte[] buffer = new byte[buffersize];
            if (this.Source.Position + (long)size > this.Source.Length)
                size = (int)(this.Source.Length - this.Source.Position);
            int num = size;
            int count1 = buffersize;
            if (count1 > num)
                count1 = num;
            int count2;
            while ((count2 = this.Source.Read(buffer, 0, count1)) != 0)
            {
                destination.Write(buffer, 0, count2);
                num -= count2;
                if (count1 > num)
                    count1 = num;
            }
        }

        public void CopyPartTo(byte[] destination, int size, int buffersize = 4096)
        {
            if (size <= 0)
                throw new Exception("Block size = 0");
            byte[] buffer = new byte[buffersize];
            if (this.Source.Position + (long)size > this.Source.Length)
                size = (int)(this.Source.Length - this.Source.Position);
            int num = size;
            int count = buffersize;
            if (count > num)
                count = num;
            int destinationIndex = 0;
            int length;
            while ((length = this.Source.Read(buffer, 0, count)) != 0)
            {
                Array.Copy((Array)buffer, 0, (Array)destination, destinationIndex, length);
                destinationIndex += length;
                num -= length;
                if (count > num)
                    count = num;
            }
        }

        public void CopyPartTo(StreamFunctionAdd destination, int size, int buffersize = 4096) => this.CopyPartTo(destination.GetSource(), size, buffersize);

        public string ReadAnsiStringStopByte(byte StopByte = 0, int codePage = 1252)
        {
            int count = 0;
            long position = this.Source.Position;
            while ((int)this.ReadByte() != (int)StopByte)
                ++count;
            this.Source.Position = position;
            byte[] numArray = new byte[count];
            this.Source.Read(numArray, 0, count);
            ++this.Source.Position;
            return System.Text.Encoding.GetEncoding(codePage).GetString(numArray, 0, count);
        }

        public string ReadAnsiStringSize(int size, int codePage = 1252)
        {
            byte[] numArray = new byte[size];
            this.Source.Read(numArray, 0, size);
            for (int index = 0; index < size; ++index)
            {
                if (numArray[index] == (byte)0)
                    size = index;
            }
            return System.Text.Encoding.GetEncoding(codePage).GetString(numArray, 0, size);
        }

        public string ReadUTF8StringStopByte(byte StopByte = 0)
        {
            int count = 0;
            long position = this.Source.Position;
            while ((int)this.ReadByte() != (int)StopByte)
                ++count;
            this.Source.Position = position;
            byte[] numArray = new byte[count];
            this.Source.Read(numArray, 0, count);
            ++this.Source.Position;
            return System.Text.Encoding.UTF8.GetString(numArray, 0, count);
        }

        public string ReadUTF8StringSize(int size)
        {
            byte[] numArray = new byte[size];
            this.Source.Read(numArray, 0, size);
            return System.Text.Encoding.UTF8.GetString(numArray, 0, size);
        }

        public void WriteAnsiStringStopByte(string str, byte stopByte = 0, int codePage = 1252)
        {
            System.Text.Encoding encoding = System.Text.Encoding.GetEncoding(codePage);
            int byteCount = encoding.GetByteCount(str);
            this.Source.Write(encoding.GetBytes(str), 0, byteCount);
            this.Source.WriteByte(stopByte);
        }

        public void WriteUTF8StringStopByte(string Str, byte StopByte = 0)
        {
            int byteCount = System.Text.Encoding.UTF8.GetByteCount(Str);
            this.Source.Write(System.Text.Encoding.UTF8.GetBytes(Str), 0, byteCount);
            this.Source.WriteByte(StopByte);
        }

        public void SeekValue(uint value)
        {
            while (this.Source.Position % (long)value != 0L)
                ++this.Source.Position;
        }

        public void SeekValueWrite(uint value)
        {
            while (this.Source.Position % (long)value != 0L)
                this.Source.WriteByte((byte)0);
        }

        public void SeekValueWrite(uint value, byte writeByte)
        {
            while (this.Source.Position % (long)value != 0L)
                this.Source.WriteByte(writeByte);
        }

        public void SetPosition(long offset) => this.Source.Position = offset;

        public long GetPosition() => this.Source.Position;

        public void SaveToFile(string FileName)
        {
            using (FileStream fileStream = new FileStream(FileName, FileMode.Create))
            {
                this.Source.Position = 0L;
                this.CopyPartTo((Stream)fileStream, (int)this.Source.Length);
            }
        }
    }
}