using System;
using System.Text;
using System.Text.RegularExpressions;

namespace HyoutaUtils
{
	public static class TextUtils
	{
		public enum GameTextEncoding
		{
			ASCII,
			ShiftJIS,
			UTF8,
			UTF16,
		}

		private static Encoding _ShiftJISEncoding = null;
		public static Encoding ShiftJISEncoding
		{
			get
			{
				if (_ShiftJISEncoding == null)
				{
					_ShiftJISEncoding = Encoding.GetEncoding(932);
				}
				return _ShiftJISEncoding;
			}
		}

		public static string GetTextShiftJis(byte[] file, int location)
		{
			if (location == -1) return null;

			try
			{
				int i = location;
				while (file[i] != 0x00)
				{
					i++;
				}
				string Text = ShiftJISEncoding.GetString(file, location, i - location);
				return Text;
			}
			catch (Exception)
			{
				return null;
			}
		}

		public static string GetTextAscii(byte[] file, int location)
		{
			if (location == -1) return null;

			try
			{
				int i = location;
				while (file[i] != 0x00)
				{
					i++;
				}
				string Text = Encoding.ASCII.GetString(file, location, i - location);
				return Text;
			}
			catch (Exception)
			{
				return null;
			}
		}

		public static string GetTextUnicode(byte[] file, int location, int maxByteLength)
		{
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < maxByteLength; i += 2)
			{
				ushort ch = BitConverter.ToUInt16(file, location + i);
				if (ch == 0 || ch == 0xFFFF) { break; }
				sb.Append((char)ch);
			}
			return sb.ToString();
		}

		public static string GetTextUTF8(byte[] file, int location)
		{
			int tmp;
			return GetTextUTF8(file, location, out tmp);
		}

		public static string GetTextUTF8(byte[] file, int location, out int nullLocation)
		{
			if (location == -1) { nullLocation = -1; return null; }

			try
			{
				int i = location;
				while (file[i] != 0x00)
				{
					i++;
				}
				string Text = Encoding.UTF8.GetString(file, location, i - location);
				nullLocation = i;
				return Text;
			}
			catch (Exception)
			{
				nullLocation = -1;
				return null;
			}
		}

		public static string TrimNull(this string s)
		{
			int n = s.IndexOf('\0', 0);
			if (n >= 0)
			{
				return s.Substring(0, n);
			}
			return s;
		}

		public static byte[] StringToBytesShiftJis(string s)
		{
			//byte[] bytes = ShiftJISEncoding.GetBytes(s);
			//return bytes.TakeWhile(subject => subject != 0x00).ToArray();
			return ShiftJISEncoding.GetBytes(s);
		}

		public static byte[] StringToBytesUTF16(string s)
		{
			return Encoding.Unicode.GetBytes(s);
		}

		public static string XmlEscape(string s)
		{
			s = s.Replace("&", "&amp;");
			s = s.Replace("\"", "&quot;");
			s = s.Replace("'", "&apos;");
			s = s.Replace("<", "&lt;");
			s = s.Replace(">", "&gt;");
			return s;
		}

		public static string Truncate(this string value, int maxLength)
		{
			if (string.IsNullOrEmpty(value)) return value;
			return value.Length <= maxLength ? value : value.Substring(0, maxLength);
		}

		public static char ConvertFullwidthToAscii(this char c)
		{
			switch (c)
			{
				case '！': return '!';
				case '＂': return '"';
				case '＃': return '#';
				case '＄': return '$';
				case '％': return '%';
				case '＆': return '&';
				case '＇': return '\'';
				case '（': return '(';
				case '）': return ')';
				case '＊': return '*';
				case '＋': return '+';
				case '，': return ',';
				case '－': return '-';
				case '．': return '.';
				case '／': return '/';
				case '０': return '0';
				case '１': return '1';
				case '２': return '2';
				case '３': return '3';
				case '４': return '4';
				case '５': return '5';
				case '６': return '6';
				case '７': return '7';
				case '８': return '8';
				case '９': return '9';
				case '：': return ':';
				case '；': return ';';
				case '＜': return '<';
				case '＝': return '=';
				case '＞': return '>';
				case '？': return '?';
				case '＠': return '@';
				case 'Ａ': return 'A';
				case 'Ｂ': return 'B';
				case 'Ｃ': return 'C';
				case 'Ｄ': return 'D';
				case 'Ｅ': return 'E';
				case 'Ｆ': return 'F';
				case 'Ｇ': return 'G';
				case 'Ｈ': return 'H';
				case 'Ｉ': return 'I';
				case 'Ｊ': return 'J';
				case 'Ｋ': return 'K';
				case 'Ｌ': return 'L';
				case 'Ｍ': return 'M';
				case 'Ｎ': return 'N';
				case 'Ｏ': return 'O';
				case 'Ｐ': return 'P';
				case 'Ｑ': return 'Q';
				case 'Ｒ': return 'R';
				case 'Ｓ': return 'S';
				case 'Ｔ': return 'T';
				case 'Ｕ': return 'U';
				case 'Ｖ': return 'V';
				case 'Ｗ': return 'W';
				case 'Ｘ': return 'X';
				case 'Ｙ': return 'Y';
				case 'Ｚ': return 'Z';
				case '［': return '[';
				case '＼': return '\\';
				case '］': return ']';
				case '＾': return '^';
				case '＿': return '_';
				case '｀': return '`';
				case 'ａ': return 'a';
				case 'ｂ': return 'b';
				case 'ｃ': return 'c';
				case 'ｄ': return 'd';
				case 'ｅ': return 'e';
				case 'ｆ': return 'f';
				case 'ｇ': return 'g';
				case 'ｈ': return 'h';
				case 'ｉ': return 'i';
				case 'ｊ': return 'j';
				case 'ｋ': return 'k';
				case 'ｌ': return 'l';
				case 'ｍ': return 'm';
				case 'ｎ': return 'n';
				case 'ｏ': return 'o';
				case 'ｐ': return 'p';
				case 'ｑ': return 'q';
				case 'ｒ': return 'r';
				case 'ｓ': return 's';
				case 'ｔ': return 't';
				case 'ｕ': return 'u';
				case 'ｖ': return 'v';
				case 'ｗ': return 'w';
				case 'ｘ': return 'x';
				case 'ｙ': return 'y';
				case 'ｚ': return 'z';
				case '｛': return '{';
				case '｜': return '|';
				case '｝': return '}';
				case '～': return '~';
				case '￠': return '¢';
				case '￡': return '£';
				case '￢': return '¬';
				//case '￣': return '';
				case '￤': return '¦';
				case '￥': return '¥';
				//case '￦': return '';
				default: return c;
			}
		}

		public static string ConvertFullwidthToAscii(this string s)
		{
			StringBuilder sb = new StringBuilder(s.Length);
			foreach (char c in s)
			{
				sb.Append(ConvertFullwidthToAscii(c));
			}
			return sb.ToString();
		}

		public static string InsertSubstring(this string a, int offseta, string b, int offsetb, int lengthb)
		{
			return a.Substring(0, offseta) + b.Substring(offsetb, lengthb) + a.Substring(offseta);
		}

		public static string ReplaceSubstring(this string a, int offseta, int lengtha, string b, int offsetb, int lengthb)
		{
			return a.Substring(0, offseta) + b.Substring(offsetb, lengthb) + a.Substring(offseta + lengtha);
		}

		public static string RemoveMultispace(this string s)
		{
			while (s.Contains("  "))
			{
				s = s.Replace("  ", " ");
			}
			return s;
		}
	}
}