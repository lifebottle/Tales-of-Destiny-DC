using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HyoutaPluginBase
{
	public interface IProgram
	{
		// string(s) that identify this program as the first command line parameter
		// first string is the 'canonical' long tool name, any more are optional
		List<string> Identifiers();

		// run the program
		int Execute(List<string> args);
	}
}