using System;
using System.IO;
using System.Collections.Generic;

namespace HyoutaTools.Tales.tlzc
{
	class tlzcmain
	{
		public static int Execute(List<string> args)
		{

			String Usage = "usage: tlzc [-c/-d] [--type number] infile outfile";

			bool ForceDecompress = false;
			bool ForceCompress = false;
			String Filename = null;
			String FilenameOut = null;

			int compressionNumFastBytes = 64;
			int compressionType = 4;

			if (args.Count < 1)
			{
				Console.WriteLine(Usage);
				return -1;
			}

			int namecounter = 0;
			for (int i = 0; i < args.Count; ++i)
			{
				string arg = args[i];
				if (arg.StartsWith("-"))
				{
					switch (arg)
					{
						case "-c": ForceCompress = true; break;
						case "-d": ForceDecompress = true; break;
						case "--type": compressionType = Int32.Parse(args[++i]); break;
						case "--fastbytes": compressionNumFastBytes = Int32.Parse(args[++i]); break;
					}
				}
				else
				{
					++namecounter;
					switch (namecounter)
					{
						case 1: Filename = arg; break;
						case 2: FilenameOut = arg; break;
					}
				}
			}

			if (Filename == null)
			{
				Console.WriteLine(Usage);
				return -1;
			}

			byte[] input = File.ReadAllBytes(Filename);
			byte[] output;

			if
			(
				(ForceDecompress || (input[0] == 'T' && input[1] == 'L' && input[2] == 'Z' && input[3] == 'C'))
				&& !ForceCompress
			)
			{
				try
				{
					Console.WriteLine("decompressing {0}", Filename);
					output = TLZC.Decompress(input);
					if (FilenameOut == null) FilenameOut = Filename + ".dec";
					File.WriteAllBytes(FilenameOut, output);
				}
				catch (Exception ex)
				{
					Console.WriteLine("Decompression failed: " + ex.ToString());
					return -1;
				}
			}
			else
			{
				try
				{
					Console.WriteLine("compressing {0}", Filename);
					output = TLZC.Compress(input, (byte)compressionType, compressionNumFastBytes);
					if (FilenameOut == null) FilenameOut = Filename + ".tlzc";
					File.WriteAllBytes(FilenameOut, output);
				}
				catch (Exception ex)
				{
					Console.WriteLine("Compression failed: " + ex.ToString());
					return -1;
				}
			}
			return 0;
		}
	}
}