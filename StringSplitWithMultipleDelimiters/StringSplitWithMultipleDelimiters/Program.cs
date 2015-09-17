using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace StringSplitWithMultipleDelimiters
{
    class Program
    {
        static void Main(string[] args)
        {
            char[] delimiterChars = { ' ', ')', '(', '.' };

            string text = "12.2B.(c)";
            System.Console.WriteLine("Original text: '{0}'", text);

            string[] allParts = text.Split(delimiterChars);
            List<string> Parts = new List<string>(allParts);
            System.Console.WriteLine("{0} words in text:", allParts.Length);

           

            while (Parts.Contains(""))
            {
                Parts.Remove("");
            }

            //List<string> nonEmptyParts = new List<string>();
            //foreach (string part in allParts)
            //{
            //    if (!String.IsNullOrEmpty(part))
            //    {
            //        nonEmptyParts.Add(part);
            //        nonEmptyParts.RemoveAll("");
            //    }
            //}

            foreach (string s in Parts)
            {
                System.Console.WriteLine(s);
            }

            // Keep the console window open in debug mode.
            System.Console.WriteLine("Press any key to exit.");
            System.Console.ReadKey();

        }

        //static void Main(string[] args)
        //{
        //    char[] delimiterChars = { ' ', ',', '.', ':', '\t' };

        //    string text = "one\ttwo three,:four,five six seven";
        //    System.Console.WriteLine("Original text: '{0}'", text);

        //    string[] words = text.Split(delimiterChars);
        //    System.Console.WriteLine("{0} words in text:", words.Length);

        //    foreach (string s in words)
        //    {
        //        System.Console.WriteLine(s);
        //    }

        //    // Keep the console window open in debug mode.
        //    System.Console.WriteLine("Press any key to exit.");
        //    System.Console.ReadKey();

        //}
    }

}
