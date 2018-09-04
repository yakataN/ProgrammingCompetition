using System;
using System.Linq;

// https://abc098.contest.atcoder.jp/submissions/2578466

namespace ABC098_b
{
    class Program
    {
        static void Main()
        {
            int n = int.Parse(Console.ReadLine());
            string s = Console.ReadLine();
            string x = "", y = "";
            int ans = 0;
            
            for (int i = 1; i < n; i++)
            {
                x = s.Substring(0,i);
                y = s.Substring(i);
                ans = Math.Max(ans, Count(x,y));
            }
            Console.WriteLine(ans);
        }

        static int Count(string s1, string s2)
        {
            int count = 0;
            string alp = "abcdefghijklmnopqrstuvwxyz"; //あるアルファベットをs1もs2も持っていたらと置き換えているのが頭いい
            foreach (var c in alp)
            {
                if (s1.Contains(c) && s2.Contains(c))
                {
                    count++;
                }
            }
            return count;
        }
    }
}
