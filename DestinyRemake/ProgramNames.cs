using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HyoutaTools
{
	public class ProgramName : IEquatable<string>, IComparable<ProgramName>
	{
		public string Name;
		public string Shortcut;
		public ProgramName(string Name, string Shortcut) { this.Name = Name; this.Shortcut = Shortcut; }
		public bool Equals(string other) { return Name.ToLowerInvariant() == other.ToLowerInvariant() || Shortcut.ToLowerInvariant() == other.ToLowerInvariant(); }
		public int CompareTo(ProgramName other) { return Name.CompareTo(other.Name); }
	}

	public class ProgramNames
	{
		public delegate int ExecuteProgramDelegate(List<string> args);

		internal static List<KeyValuePair<ProgramName, ExecuteProgramDelegate>> BuiltInTools = new List<KeyValuePair<ProgramName, ExecuteProgramDelegate>>() {
			{ new KeyValuePair<ProgramName, ExecuteProgramDelegate>( new ProgramName( "Tales.DestinyRemake.TblBin.Extract",      "-"           ),  Tales.DestinyRemake.TblBin.Execute.Extract) },
			{ new KeyValuePair<ProgramName, ExecuteProgramDelegate>( new ProgramName( "Tales.DestinyRemake.MglkExtract.Extract", "-"           ),  Tales.DestinyRemake.MglkExtract.Execute.Extract) },
		};
	}
}