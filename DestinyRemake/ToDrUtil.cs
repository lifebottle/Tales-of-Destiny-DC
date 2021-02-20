using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HyoutaUtils;

namespace HyoutaTools.Tales.DestinyRemake
{
	public static class ToDrUtil
	{
		public static String GetTextPseudoShiftJis(byte[] File, int Pointer)
		{
			if (Pointer == -1) return null;

			int i = Pointer;
			while (i < File.Length && File[i] != 0x00)
			{
				i++;
			}
			String Text = GetStringPseudoShiftJis(File, Pointer, i - Pointer);
			return Text;
		}
		public static String GetStringPseudoShiftJis(byte[] Bytes, int index, int count)
		{
			StringBuilder sb = new StringBuilder(count);
			byte[] bytearray = new byte[2];
			for (int i = 0; i < count; ++i)
			{
				byte b = Bytes[index + i];
				if (b < 0x80)
				{
					sb.Append((char)b);
				}
				else
				{
					i++;
					byte b2 = Bytes[index + i];
					ushort twoByteJp = (ushort)(b << 8 | b2);
					sb.Append(GetCharPseudoShiftJis(twoByteJp));
				}
			}
			return sb.ToString();
		}
		private static Dictionary<ushort, char> PseudoShiftJisMap = null;
		public static void InitPseudoShiftJis(string filename)
		{
			if (PseudoShiftJisMap == null)
			{
				PseudoShiftJisMap = new Dictionary<ushort, char>();

				// this is file #14 in DAT.BIN, 7177 bytes with comptoe header, 7168 without comptoe header
				byte[] tbl = System.IO.File.ReadAllBytes(filename);
				byte[] shiftJisChar = new byte[2];
				ushort TodChar = 0x9940;
				for (int i = (tbl[0] == 0x00 ? 9 : 0); i < tbl.Length; i += 2)
				{
					shiftJisChar[1] = tbl[i];
					shiftJisChar[0] = tbl[i + 1];

					char[] chars = TextUtils.ShiftJISEncoding.GetChars(shiftJisChar, 0, 2);
					PseudoShiftJisMap.Add(TodChar, chars[0]);

					if (TodChar == 0x99A0) { TodChar += 2; }

					TodChar++;
				}
			}
		}
		public static char GetCharPseudoShiftJis(ushort character)
		{
			return PseudoShiftJisMap[character];
		}
	}
}