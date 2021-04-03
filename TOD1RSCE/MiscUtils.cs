using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace sceWork
{
    class MiscUtils
    {
        public static void Die(string message)
        {
            Console.Write("[");
            Console.ForegroundColor = ConsoleColor.DarkRed;
            Console.Write("FATAL");
            Console.ResetColor();
            Console.Write("] ");
            Console.WriteLine(message);
            Console.WriteLine("Press any key to exit...");
            //Console.ReadKey();
            Environment.Exit(-1);
        }

        public static void Warn(string message)
        {
            Console.Write("[");
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write("WARNING");
            Console.ResetColor();
            Console.Write("] ");
            Console.WriteLine(message);
        }
        public static void Info(string message)
        {
            Console.Write("[");
            Console.ForegroundColor = ConsoleColor.Blue;
            Console.Write("INFO");
            Console.ResetColor();
            Console.Write("] ");
            Console.WriteLine(message);
        }
        public static void Err(string message)
        {
            Console.Write("[");
            Console.ForegroundColor = ConsoleColor.Red;
            Console.Write("ERROR");
            Console.ResetColor();
            Console.Write("] ");
            Console.WriteLine(message);
        }
    }
}
