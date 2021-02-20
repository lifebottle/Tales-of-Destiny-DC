using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using HyoutaUtils;

namespace HyoutaTools.Tales.DestinyRemake.MglkExtract
{
	class MGLK
	{
		public byte[] Mglk;

		public ushort NumberOfExtraSectionsPlus2;
		public ushort NumberOfExtraSections;

		public uint[] PointersToExtraSections;
		public uint PointerToScenarioFile;
		public uint PointerToEndOfFile;

		public uint HeaderSize;

		public void Load(byte[] Mglk)
		{
			this.Mglk = Mglk;

			NumberOfExtraSectionsPlus2 = BitConverter.ToUInt16(Mglk, 0x0A);
			NumberOfExtraSections = BitConverter.ToUInt16(Mglk, 0x0E);

			HeaderSize = (uint)(0x20 + NumberOfExtraSectionsPlus2 * 4);

			PointersToExtraSections = new uint[NumberOfExtraSections];
			uint SummedPointers = HeaderSize;
			for (int i = 0; i < NumberOfExtraSections; ++i)
			{
				SummedPointers += BitConverter.ToUInt32(Mglk, 0x20 + i * 4); // pointers in the file are relative to the last one, just sum them up to get absolute ones
				PointersToExtraSections[i] = SummedPointers;
			}

			PointerToScenarioFile = PointersToExtraSections[NumberOfExtraSections - 1] + BitConverter.ToUInt32(Mglk, 0x20 + NumberOfExtraSections * 4);
			PointerToEndOfFile = PointerToScenarioFile + BitConverter.ToUInt32(Mglk, 0x20 + NumberOfExtraSections * 4 + 4);

			return;
		}

		public void ExtractScenarioFileOnly(string ScenarioFilePath)
		{
			// let's be honest here all we care about is the scenario file, just extract that
			byte[] ScenarioFile = new byte[PointerToEndOfFile - PointerToScenarioFile];
			ArrayUtils.CopyByteArrayPart(Mglk, (int)PointerToScenarioFile, ScenarioFile, 0, ScenarioFile.Length);
			System.IO.File.WriteAllBytes(ScenarioFilePath, ScenarioFile);
		}
	}
}