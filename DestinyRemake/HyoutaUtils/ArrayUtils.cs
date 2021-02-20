using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HyoutaUtils
{
	public static class ArrayUtils
	{
		public static void CopyByteArrayPart(IList<byte> from, int locationFrom, IList<byte> to, int locationTo, int count)
		{
			for (int i = 0; i < count; ++i)
			{
				to[locationTo + i] = from[locationFrom + i];
			}
		}

		public static void FillNull(IList<byte> array, int location, int count)
		{
			for (int i = 0; i < count; ++i)
			{
				array[location + i] = 0x00;
			}
		}

		public static bool IsByteArrayPartEqual(IList<byte> array1, int location1, IList<byte> array2, int location2, int count)
		{
			for (int i = 0; i < count; ++i)
			{
				if (array1[i + location1] != array2[i + location2])
				{
					return false;
				}
			}
			return true;
		}
	}
}