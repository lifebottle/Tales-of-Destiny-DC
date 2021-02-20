using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HyoutaPluginBase
{
	public abstract class DuplicatableStream : System.IO.Stream
	{
		// Returns a copy of this stream.
		public abstract DuplicatableStream Duplicate();

		// use these two to keep open file handles in check
		// no need to keep thousands of file handles open if we're only ever accessing a handful at once...
		// open or reset underlying stream; call before accessing data
		public abstract void ReStart();

		// signify that we're done with accessing the data for now
		// it should be possible to call ReStart() again later to reopen the stream
		// even if ReStart() is not called, the next access should implicitly
		// start from the beginning of the stream after a call to End()
		public abstract void End();
	}
}