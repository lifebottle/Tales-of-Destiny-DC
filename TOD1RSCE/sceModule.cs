using StreamFAdd;
using System;
using System.Collections.Generic;
using System.IO;

namespace sceWork
{
    internal class sceModule
    {
        private sceHeader header;
        private StreamFunctionAdd mainSfa;


        public void Dispose() => this.mainSfa.Dispose();

        public int Count => this.header.fileStrings.Count;

        internal sceHeader Header { get => header; set => header = value; }

        public sceModule(string fileName)
        {
            this.mainSfa = new StreamFunctionAdd(fileName);
            this.header = new sceHeader(this.mainSfa);
        }

        public byte[] GetBlock(int idx) => this.header.fileStrings[idx].data.ToArray();

        public string GetStringBlock(int idx)
        {
            string str = "";
            for (int index = 0; index < this.header.fileStrings[idx].data.Count; ++index)
                str += this.header.fileStrings[idx].data[index].ToString("X2");
            return str;
        }

        public void SetBlock(int idx, byte[] data)
        {
            this.header.fileStrings[idx].data.Clear();
            for (int index = 0; index < data.Length; ++index)
                this.header.fileStrings[idx].data.Add(data[index]);
        }

        public void SetStringBlock(int idx, string str)
        {
            List<byte> byteList = new List<byte>();
            for (int index = 0; index < str.Length; ++index)
                byteList.Add(Convert.ToByte(str[index]));
            this.SetBlock(idx, byteList.ToArray());
        }

        public void Save(bool dedup=false) => header.WriteStrings(mainSfa, dedup);

        public bool isHaveText() => mainSfa.LengthStream - header.offsetStrings > 2L;

        public void ExtractBlocks()
        {
            for (int index1 = 0; index1 < header.fileStrings.Count; ++index1)
            {
                byte[] bytes = new byte[header.fileStrings[index1].data.Count];
                for (int index2 = 0; index2 < bytes.Length; ++index2)
                    bytes[index2] = header.fileStrings[index1].data[index2];
                File.WriteAllBytes(index1.ToString(), bytes);
            }
        }
    }
}