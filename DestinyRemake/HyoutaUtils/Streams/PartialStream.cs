using System;
using System.IO;
using HyoutaPluginBase;

namespace HyoutaUtils.Streams
{
	public class PartialStream : DuplicatableStream
	{
		private DuplicatableStream BaseStreamInternal;
		private bool Initialized;
		private long PartialStart;
		private long PartialLength;

		private long CurrentPosition;

		private DuplicatableStream BaseStream
		{
			get
			{
				if (!Initialized)
				{
					ReStart();
				}
				return BaseStreamInternal;
			}
		}

		private long PartialEnd { get { return PartialStart + PartialLength; } }
		private long PartialBytesLeft { get { return PartialLength - CurrentPosition; } }

		public PartialStream(DuplicatableStream stream, long position, long length)
		{
			if (position < 0) { throw new Exception("Invalid position, must be positive."); }
			if (length < 0) { throw new Exception("Invalid length, must be positive."); }

			if (stream is PartialStream)
			{
				// optimization to better chain partial stream of partial stream
				PartialStream parent = stream as PartialStream;
				BaseStreamInternal = parent.BaseStreamInternal.Duplicate();
				Initialized = false;
				PartialStart = parent.PartialStart + position;
				PartialLength = length;
				CurrentPosition = 0;
			}
			else
			{
				BaseStreamInternal = stream.Duplicate();
				Initialized = false;
				PartialStart = position;
				PartialLength = length;
				CurrentPosition = 0;
			}
		}

		public override bool CanRead => BaseStream.CanRead;
		public override bool CanSeek => BaseStream.CanSeek;
		public override bool CanWrite => BaseStream.CanWrite;
		public override long Length => PartialLength;
		public override long Position
		{
			get => CurrentPosition;
			set
			{
				if (value < 0)
				{
					throw new Exception("Invalid position for partial stream.");
				}
				long v = Math.Min(value, PartialLength);
				BaseStream.Position = PartialStart + v;
				CurrentPosition = v;
			}
		}

		public override void Flush()
		{
			BaseStream.Flush();
		}

		public override int Read(byte[] buffer, int offset, int count)
		{
			int c = (int)Math.Min(PartialBytesLeft, count);
			int v = BaseStream.Read(buffer, offset, c);
			CurrentPosition += v;
			return v;
		}

		public override long Seek(long offset, SeekOrigin origin)
		{
			switch (origin)
			{
				case SeekOrigin.Begin:
					Position = offset;
					break;
				case SeekOrigin.Current:
					Position = Position + offset;
					break;
				case SeekOrigin.End:
					Position = Length - offset; // FIXME: is that right?
					break;
			}
			return Position;
		}

		public override void SetLength(long value)
		{
			throw new Exception("Cannot set length of partial streams.");
		}

		public override void Write(byte[] buffer, int offset, int count)
		{
			int c = (int)Math.Min(PartialBytesLeft, count);
			BaseStream.Write(buffer, offset, c);
			CurrentPosition += c;
		}

		public override int ReadByte()
		{
			if (PartialBytesLeft > 0)
			{
				int v = BaseStream.ReadByte();
				if (v != -1)
				{
					++CurrentPosition;
				}
				return v;
			}
			return -1;
		}

		public override void WriteByte(byte value)
		{
			if (PartialBytesLeft > 0)
			{
				BaseStream.WriteByte(value);
				++CurrentPosition;
			}
		}

		public override DuplicatableStream Duplicate()
		{
			return new PartialStream(BaseStreamInternal, PartialStart, PartialLength);
		}

		public override void ReStart()
		{
			BaseStreamInternal.ReStart();
			BaseStreamInternal.Position = PartialStart;
			CurrentPosition = 0;
			Initialized = true;
		}

		public override void End()
		{
			BaseStreamInternal.End();
			CurrentPosition = 0;
			Initialized = false;
		}

		protected override void Dispose(bool disposing)
		{
			BaseStreamInternal.Dispose();
		}

		public override void Close()
		{
			BaseStreamInternal.Close();
		}

		public override string ToString()
		{
			return "Partial stream [0x" + PartialStart.ToString("X") + ", 0x" + PartialEnd.ToString("X") + "] (0x" + PartialLength.ToString("X") + " bytes) of " + BaseStreamInternal.ToString();
		}
	}
}