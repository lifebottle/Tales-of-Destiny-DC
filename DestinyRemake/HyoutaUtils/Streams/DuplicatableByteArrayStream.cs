using System;
using System.IO;
using HyoutaPluginBase;

namespace HyoutaUtils.Streams
{
	// note: this class assumes it gains ownership of the passed Data array; do not modify it after passing!
	public class DuplicatableByteArrayStream : DuplicatableStream
	{
		private byte[] Data;
		private long CurrentPosition;

		public DuplicatableByteArrayStream(byte[] data)
		{
			Data = data;
			CurrentPosition = 0;
		}

		public override bool CanRead => true;
		public override bool CanSeek => true;
		public override bool CanWrite => false;
		public override long Length => Data.Length;

		public override long Position
		{
			get => CurrentPosition;
			set
			{
				if (value < 0)
				{
					throw new Exception("Negative position is invalid.");
				}
				CurrentPosition = value;
			}
		}

		public override DuplicatableStream Duplicate()
		{
			return new DuplicatableByteArrayStream(Data);
		}

		public override void End()
		{
			CurrentPosition = 0;
		}

		public override void Flush()
		{
		}

		public override int Read(byte[] buffer, int offset, int count)
		{
			long pos = CurrentPosition;
			long cnt = Data.Length - pos;
			if (cnt > count)
			{
				cnt = count;
			}
			if (cnt <= 0)
			{
				return 0;
			}

			for (long i = 0; i < cnt; ++i)
			{
				buffer[offset + i] = Data[pos + i];
			}
			CurrentPosition += cnt;

			return (int)cnt;
		}

		public override int ReadByte()
		{
			if (CurrentPosition < Data.Length)
			{
				int rv = Data[CurrentPosition];
				++CurrentPosition;
				return rv;
			}
			else
			{
				return -1;
			}
		}

		public override void ReStart()
		{
			CurrentPosition = 0;
		}

		public override long Seek(long offset, SeekOrigin origin)
		{
			switch (origin)
			{
				case SeekOrigin.Begin: Position = offset; break;
				case SeekOrigin.Current: Position = Position + offset; break;
				case SeekOrigin.End: Position = Length - offset; break;
			}
			return Position;
		}

		public override void SetLength(long value)
		{
			throw new NotSupportedException();
		}

		public override void Write(byte[] buffer, int offset, int count)
		{
			throw new NotSupportedException();
		}

		protected override void Dispose(bool disposing)
		{
			Data = null;
		}

		public override string ToString()
		{
			return "Byte array stream (0x" + Data.LongLength.ToString("X") + " bytes)";
		}
	}
}