using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HyoutaPluginBase;

namespace HyoutaTools
{
	public class ToolExecution
	{
		public IProgram Program { get; private set; }
		public List<string> Arguments { get; private set; }

		public ToolExecution(IProgram program, List<string> arguments)
		{
			Program = program;
			Arguments = arguments;
		}
	}

	public class LegacyToolWrapper : IProgram
	{
		private ProgramNames.ExecuteProgramDelegate Tool;
		private ProgramName Name;

		public LegacyToolWrapper(ProgramName name, ProgramNames.ExecuteProgramDelegate e)
		{
			Tool = e;
			Name = name;
		}

		public int Execute(List<string> args)
		{
			return Tool(args);
		}

		public List<string> Identifiers()
		{
			List<string> l = new List<string>();
			l.Add(Name.Name);
			if (Name.Shortcut != "-")
			{
				l.Add(Name.Shortcut);
			}
			return l;
		}
	}

	public class Initialization
	{
		private static List<KeyValuePair<ProgramName, ProgramNames.ExecuteProgramDelegate>> KnownTools = new List<KeyValuePair<ProgramName, ProgramNames.ExecuteProgramDelegate>>();
		private static List<IProgram> KnownToolsInstances = new List<IProgram>();

		public static void Initialize()
		{
			KnownTools.Clear();
			KnownTools.AddRange(ProgramNames.BuiltInTools);

			DecompressorManager.Instance.UnregisterAllDecompressors();
			DecompressorManager.Instance.RegisterDecompressor(new Tales.tlzc.TlzcDecompressor());

			LoadPlugins();
		}

		public static IEnumerable<IProgram> GetRegisteredTools()
		{
			List<IProgram> progs = new List<IProgram>();
			foreach (var t in KnownTools)
			{
				progs.Add(new LegacyToolWrapper(t.Key, t.Value));
			}
			progs.AddRange(KnownToolsInstances);
			return progs;
		}

		public static void RegisterTool(KeyValuePair<ProgramName, ProgramNames.ExecuteProgramDelegate> tool)
		{
			KnownTools.Add(tool);
		}

		public static void RegisterToolInstance(IProgram program)
		{
			KnownToolsInstances.Add(program);
		}

		public static ToolExecution ParseToolFromCommandLineArgs(string[] args)
		{
			if (args.Length > 0)
			{
				string ProgramName = args[0];
				if (ProgramName == "-") { return null; }
				List<string> ProgramArguments = new List<string>(args.Length - 1);
				for (int i = 1; i < args.Length; ++i)
				{
					ProgramArguments.Add(args[i]);
				}

				var kvp = KnownTools.Find(x => x.Key.Equals(ProgramName));
				if (kvp.Value != null)
				{
					return new ToolExecution(new LegacyToolWrapper(kvp.Key, kvp.Value), ProgramArguments);
				}

				var instance = KnownToolsInstances.Find(x => x.Identifiers().Any(y => y.ToLowerInvariant() == ProgramName.ToLowerInvariant()));
				if (instance != null)
				{
					return new ToolExecution(instance, ProgramArguments);
				}
			}
			return null;
		}

		private static void LoadPlugins()
		{
			try
			{
				var path = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
				var pluginPath = System.IO.Path.Combine(path, "HyoutaToolsPlugins");
				if (System.IO.Directory.Exists(pluginPath))
				{
					var possiblePlugins = new System.IO.DirectoryInfo(pluginPath).GetFiles("*.dll", System.IO.SearchOption.AllDirectories);
					foreach (var p in possiblePlugins)
					{
						try
						{
							foreach (var type in System.Reflection.Assembly.LoadFile(p.FullName).GetExportedTypes())
							{
								try
								{
									if (type.IsClass && !type.IsAbstract && typeof(IProgram).IsAssignableFrom(type))
									{
										var prog = type.GetConstructor(Type.EmptyTypes)?.Invoke(null);
										if (prog != null)
										{
											var pr = (IProgram)prog;
											if (pr.Identifiers().Count > 0)
											{
												RegisterToolInstance(pr);
											}
											else
											{
												Console.WriteLine("Cannot register class " + type.FullName + " from " + p.FullName + ": No identifiers provided.");
											}
										}
									}
								}
								catch (Exception ex)
								{
									Console.WriteLine("Failed to load class " + type.FullName + " from " + p.FullName + ": " + ex.ToString());
								}

								try
								{
									if (type.IsClass && !type.IsAbstract && typeof(IDecompressor).IsAssignableFrom(type))
									{
										var decompressor = type.GetConstructor(Type.EmptyTypes)?.Invoke(null);
										if (decompressor != null)
										{
											var d = (IDecompressor)decompressor;
											if (!string.IsNullOrEmpty(d.GetId()))
											{
												if (!DecompressorManager.Instance.RegisterDecompressor(d))
												{
													Console.WriteLine("Cannot register decompressor " + type.FullName + " from " + p.FullName + ": Decompressor with same ID already exists.");
												}
											}
											else
											{
												Console.WriteLine("Cannot register decompressor " + type.FullName + " from " + p.FullName + ": No identifier provided.");
											}
										}
									}
								}
								catch (Exception ex)
								{
									Console.WriteLine("Failed to load class " + type.FullName + " from " + p.FullName + ": " + ex.ToString());
								}
							}
						}
						catch (Exception ex)
						{
							Console.WriteLine("Failed to load plugin " + p.FullName + ": " + ex.ToString());
						}
					}
				}
				else
				{
					Console.WriteLine("Directory 'HyoutaToolsPlugins' not found, not loading any plugins.");
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine("Failed to load plugins: " + ex.ToString());
			}
		}
	}
}