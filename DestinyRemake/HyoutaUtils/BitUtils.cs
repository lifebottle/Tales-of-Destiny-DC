using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HyoutaUtils
{
	public static class BitUtils
	{
		public enum Bitness
		{
			B8,
			B16,
			B32,
			B64,
		}

		public static int ExtractBit(uint number, int bit)
		{
			return (number & (1u << bit)) != 0 ? 1 : 0;
		}

		public static int ExtractBit(ulong number, int bit)
		{
			return (number & ((ulong)(1) << bit)) != 0 ? 1 : 0;
		}

		public static uint NumberOfBytes(this Bitness bits)
		{
			switch (bits)
			{
				case Bitness.B8: return 1;
				case Bitness.B16: return 2;
				case Bitness.B32: return 4;
				case Bitness.B64: return 8;
			}
			throw new Exception("Number of bits not implemented for bitness " + bits.ToString());
		}
	}
}