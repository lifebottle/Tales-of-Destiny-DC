using System.Text;

namespace sceWork
{
    public class tableEntry
    {
        public string A;
        public string B;

        public tableEntry(string str)
        {
            str = str.Replace(" ", "");
            str = str.Replace("\t", "");
            int startIndex = str.IndexOf('=');

            this.A = str.Remove(startIndex);
            this.A = this.A.ToUpper();
            this.B = str.Remove(0, startIndex + 1);
            int commentIndex = this.B.IndexOf(';');
            if (commentIndex > 0)
                this.B = this.B.Remove(commentIndex);
            this.B = System.Text.RegularExpressions.Regex.Unescape(this.B);
            this.B = System.BitConverter.ToString(Encoding.GetEncoding(932).GetBytes(this.B)).Replace("-", string.Empty);            
        }
    }
}