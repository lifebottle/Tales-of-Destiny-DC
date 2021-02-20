using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HyoutaPluginBase;

namespace HyoutaTools
{
	public class DecompressorManager
	{
		public static readonly DecompressorManager Instance = new DecompressorManager();

		private List<IDecompressor> Decompressors;

		public DecompressorManager()
		{
			Decompressors = new List<IDecompressor>();
		}

		public bool RegisterDecompressor(IDecompressor decompressor)
		{
			if (decompressor != null && GetDecompressor(decompressor.GetId()) == null)
			{
				Decompressors.Add(decompressor);
				return true;
			}
			return false;
		}

		public IDecompressor GetDecompressor(string id)
		{
			return Decompressors.Where(x => x.GetId() == id).FirstOrDefault();
		}

		public IEnumerable<IDecompressor> GetDecompressors()
		{
			return Decompressors;
		}

		public void UnregisterAllDecompressors()
		{
			Decompressors.Clear();
		}
	}
}