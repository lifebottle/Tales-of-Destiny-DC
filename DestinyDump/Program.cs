using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DestinyDump
{
    class Program
    {
        static void Main(string[] args)
        {
            // C:\\Users\\Destiny\\Desktop\\DestinyDump\\bin\\Debug\\00014.bin

            Console.WriteLine("Make sure your font file (000014.bin) in in the same directory as this EXE and type in only the file name:");
            string filename = Console.ReadLine(); //path to 00014.bin
            string output = "";
            byte[] tbl = System.IO.File.ReadAllBytes(filename);
            byte[] shiftJisChar = new byte[2];
            int sjisIndex = 0x0;
            for (int TodChar = 0x9940; TodChar < 0xEC60; TodChar++)
            {
                //If character falls withing this range skip
                //Change to if (0xAC60 < TodChar && TodChar < 0xE000)
                //If you want the 0xA### duplicates
                if (0xA000 <= TodChar && TodChar < 0xE000)
                {
                    continue;
                }

                //Get top and bottom bytes
                int topByte = TodChar >> 0x08;
                int lowByte = TodChar & 0xFF;

                //Do whatever the hell this is
                if (topByte >= 0xE0) { topByte -= 0x40; }
                if (lowByte >= 0x80) { lowByte -= 0x01; }
                if (lowByte >= 0x5D) { lowByte -= 0x01; }
                sjisIndex = lowByte - 0x40 + ((topByte - 0x99) * 0xBB);

                //Get character at the index position
                shiftJisChar[1] = tbl[sjisIndex * 2];
                shiftJisChar[0] = tbl[sjisIndex * 2 + 1];

                //Decode and save
                char[] chars = Encoding.GetEncoding(932).GetChars(shiftJisChar, 0, 2);
                output += TodChar.ToString("X4") + "=" + chars[0] + "\r\n";
            }
            //change ToDDC.tbl with actual path
            System.IO.File.WriteAllText("ToDDC.tbl", output);
        }
    }
}
