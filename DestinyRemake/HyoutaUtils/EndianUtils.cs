using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HyoutaUtils
{
	public static class EndianUtils
	{
		public enum Endianness
		{
			LittleEndian,
			BigEndian,
		}

		// baffling thing seen in Gust textures, 0xXY <-> 0xYX
		public static byte SwapEndian4Bits(this byte x)
		{
			return (byte)(((x & 0x0F) << 4) | ((x & 0xF0) >> 4));
		}

		public static short SwapEndian(this short x)
		{
			return (short)SwapEndian((ushort)x);
		}

		public static ushort SwapEndian(this ushort x)
		{
			return x = (ushort)
				((x << 8) |
				  (x >> 8));
		}

		public static int SwapEndian24(this int x)
		{
			return (int)SwapEndian24((uint)x);
		}
		public static uint SwapEndian24(this uint x)
		{
			return ((x & 0x000000FF) << 16) |
				   ((x & 0x0000FF00)) |
				   ((x & 0x00FF0000) >> 16);
		}

		public static int SwapEndian(this int x)
		{
			return (int)SwapEndian((uint)x);
		}

		public static uint SwapEndian(this uint x)
		{
			return x = (x << 24) |
					   ((x << 8) & 0x00FF0000) |
					   ((x >> 8) & 0x0000FF00) |
					   (x >> 24);
		}

		public static long SwapEndian(this long x)
		{
			return (long)SwapEndian((ulong)x);
		}

		public static ulong SwapEndian(this ulong x)
		{
			return x = (x << 56) |
					   ((x << 40) & 0x00FF000000000000) |
					   ((x << 24) & 0x0000FF0000000000) |
					   ((x << 8) & 0x000000FF00000000) |
					   ((x >> 8) & 0x00000000FF000000) |
					   ((x >> 24) & 0x0000000000FF0000) |
					   ((x >> 40) & 0x000000000000FF00) |
					   (x >> 56);
		}

		public static short ToEndian(this short x, Endianness endian)
		{
			return (short)ToEndian((ushort)x, endian);
		}

		public static ushort ToEndian(this ushort x, Endianness endian)
		{
			switch (endian)
			{
				case Endianness.LittleEndian: if (BitConverter.IsLittleEndian) { return x; } else { return x.SwapEndian(); }
				case Endianness.BigEndian: if (BitConverter.IsLittleEndian) { return x.SwapEndian(); } else { return x; }
				default: throw new Exception("Invalid Endianness");
			}
		}

		public static int ToEndian(this int x, Endianness endian)
		{
			return (int)ToEndian((uint)x, endian);
		}

		public static uint ToEndian(this uint x, Endianness endian)
		{
			switch (endian)
			{
				case Endianness.LittleEndian: if (BitConverter.IsLittleEndian) { return x; } else { return x.SwapEndian(); }
				case Endianness.BigEndian: if (BitConverter.IsLittleEndian) { return x.SwapEndian(); } else { return x; }
				default: throw new Exception("Invalid Endianness");
			}
		}

		public static long ToEndian(this long x, Endianness endian)
		{
			return (long)ToEndian((ulong)x, endian);
		}

		public static ulong ToEndian(this ulong x, Endianness endian)
		{
			switch (endian)
			{
				case Endianness.LittleEndian: if (BitConverter.IsLittleEndian) { return x; } else { return x.SwapEndian(); }
				case Endianness.BigEndian: if (BitConverter.IsLittleEndian) { return x.SwapEndian(); } else { return x; }
				default: throw new Exception("Invalid Endianness");
			}
		}

		// honestly I'm not sure if it makes sense to have different To and From functions
		// since all cases I can think of result in the same thing, but better be safe than sorry,
		// and it also gives some information if we're reading in or writing out data
		public static short FromEndian(this short x, Endianness endian)
		{
			return ToEndian(x, endian);
		}

		public static ushort FromEndian(this ushort x, Endianness endian)
		{
			return ToEndian(x, endian);
		}

		public static int FromEndian(this int x, Endianness endian)
		{
			return ToEndian(x, endian);
		}

		public static uint FromEndian(this uint x, Endianness endian)
		{
			return ToEndian(x, endian);
		}

		public static long FromEndian(this long x, Endianness endian)
		{
			return ToEndian(x, endian);
		}

		public static ulong FromEndian(this ulong x, Endianness endian)
		{
			return ToEndian(x, endian);
		}
	}
}