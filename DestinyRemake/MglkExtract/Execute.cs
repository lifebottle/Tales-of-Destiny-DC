using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HyoutaTools.Tales.DestinyRemake.MglkExtract
{
	class Execute
	{
		public static int Extract(List<string> args)
		{

			string MglkPath = args[0];

			MGLK Mglk = new MGLK();
			Mglk.Load(System.IO.File.ReadAllBytes(MglkPath));

			Mglk.ExtractScenarioFileOnly(MglkPath + ".sce");

			return 0;
		}
	}
}