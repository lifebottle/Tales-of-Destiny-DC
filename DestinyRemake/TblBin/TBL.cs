using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using HyoutaUtils;

namespace HyoutaTools.Tales.DestinyRemake.TblBin
{
	class TblBinFileReference
	{
		public uint Start;
		// File might be compressed, in that case this stores not the filesize of the current, compressed file, but rather how big it is after decompression
		public uint FilesizeOfDecompressedFile;

		public uint End;
	}

	class TBL
	{

		public List<TblBinFileReference> Refs;
		public const int FileAlignment = 64;

		public void Load(byte[] Tbl)
		{
			Refs = new List<TblBinFileReference>();

			for (int i = 0; i < Tbl.Length - 8; i += 8)
			{
				TblBinFileReference r = new TblBinFileReference();
				r.Start = BitConverter.ToUInt32(Tbl, i);
				// this does some weird ass stuff with the file locations, last 6 bits of the location are used for the padding until the next file after the current one or something...?
				uint PaddingAfterFile = (r.Start % FileAlignment);
				r.Start -= PaddingAfterFile;
				r.FilesizeOfDecompressedFile = BitConverter.ToUInt32(Tbl, i + 4);
				r.End = BitConverter.ToUInt32(Tbl, i + 8);
				r.End = r.End - (r.End % FileAlignment) - PaddingAfterFile;
				Refs.Add(r);
			}
		}

		public void Extract(Stream Bin, string Outfolder)
		{
			Directory.CreateDirectory(Outfolder);
			int count = 0;
			foreach (TblBinFileReference r in Refs)
			{
				FileStream fs = new FileStream(System.IO.Path.Combine(Outfolder, count.ToString("D6")), FileMode.Create);
				Bin.Position = r.Start;
				StreamUtils.CopyStream(Bin, fs, (int)(r.End - r.Start));
				fs.Close();
				++count;
			}
		}
	}
}