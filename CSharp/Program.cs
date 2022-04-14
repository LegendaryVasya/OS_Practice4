//using System;
//using System.Diagnostics;
//namespace CSharp
//{
//    class Program
//    {

//        static void Main(string[] args)
//        {

//            //var watch = Stopwatch.StartNew();
//            Console.WriteLine("Введите i");
//            int i = Convert.ToInt32(Console.ReadLine());
//            Console.WriteLine("Введите b");
//            int b = Convert.ToInt32(Console.ReadLine());
//            Console.WriteLine("Введите c");
//            int c = Convert.ToInt32(Console.ReadLine());
//            DateTime start = DateTime.Now;
//            function(i, b, c);
//            //Console.WriteLine($"{watch.Elapsed.Seconds}c");
//            Console.WriteLine(DateTime.Now - start);
//        }

//        public static int function(int i,  int b, int c)
//        {

//            //int b = 3;
//            //int c = 3;
//            if (i == 0)
//            {
//                return 0;
//            }

//            int x = 0;
//            for (int n = 0; n < 100000000; n++) {
//                x += b * 2 + c - i;

//            }
//            Console.WriteLine($"Ответ {x}");

//            return function(i - 1, b, c) + x;


//        }

//    }
//}
using System;
using System.Diagnostics;
namespace CSharp
{
    class Program
    {

        static void Main(string[] args)
        {
            int a = 0;
            int b = 2;
            int c = 3;
            long iterations = 100000000l;

            DateTime start = DateTime.Now;
            
            for (int i = 0; i <= iterations; i++) {
                a += b * 2 + c - i;
            }
            Console.WriteLine(DateTime.Now - start);
        }
    }
}