using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HyoutaPluginBase;

namespace HyoutaToolsCLI
{
	public class Program
	{
		static int Main(string[] args)
		{
			HyoutaTools.Initialization.Initialize();

			var tool = HyoutaTools.Initialization.ParseToolFromCommandLineArgs(args);
			if (tool != null)
			{
				return tool.Program.Execute(tool.Arguments);
			}
			else
			{
				PrintUsage(HyoutaTools.Initialization.GetRegisteredTools(), args.Length > 0 ? args[0] : null);
				return -1;
			}
		}

		private static void PrintUsage(IEnumerable<HyoutaPluginBase.IProgram> tools, string part = null)
		{
			bool programFound = false;
			if (part != null) { part = part.ToLowerInvariant(); }
			foreach (var p in tools.OrderBy(x => x.Identifiers().First()))
			{
				if (part == null || p.Identifiers().Any(x => x.ToLowerInvariant().Contains(part)))
				{
					List<string> ids = p.Identifiers();
					Console.WriteLine(String.Format(" {1,-12} {0}", ids.First(), ids.Count > 1 ? ids[1] : "-"));
					programFound = true;
				}
			}

			if (!programFound)
			{
				Console.WriteLine(String.Format(" No tool matching '{0}' found!", part));
			}
		}
	}
}