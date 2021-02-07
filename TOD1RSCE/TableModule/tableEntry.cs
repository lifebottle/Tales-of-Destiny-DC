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
            str = str.ToUpper();
            int startIndex = str.IndexOf(';');
            this.A = str.Remove(startIndex);
            this.B = str.Remove(0, startIndex + 1);
            this.B = this.B.Remove(this.B.IndexOf(';'));
        }
    }
}